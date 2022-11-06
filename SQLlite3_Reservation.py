'''
SQLitet3를 이용한 간단 Reservation System
관련 블로그 내용 : https://velog.io/@cbkyeong/DB-%EC%82%AC%EC%9A%A9-%EC%97%B0%EC%8A%B5%ED%8E%B8-%EA%B0%84%EB%8B%A8-%EC%98%88%EC%95%BD%EC%8B%9C%EC%8A%A4%ED%85%9C
'''

import sqlite3


class Sqlite3System():
    def init_db(self):
        self.connect = sqlite3.connect('/home/aiffel-dj60/SQLite3/reservation.db')
        self.cursor = self.connect.cursor()

    def close_db(self):
        self.connect.commit()
        self.connect.close()

    def creat_table(self):
        self.init_db()
        self.cursor.execute("CREATE TABLE IF NOT EXISTS reservation \
            (name TEXT NOT NULL, product INT NOT NULL, quantity INT NOT NULL, phone PRIMARY KEY)")


    def creat_sql(self, user_info_dic):
        self.creat_table()
        self.connect.execute(
        f"INSERT INTO reservation \
        VALUES ('{user_info_dic['name']}', {user_info_dic['product']}, {user_info_dic['quantity']}, {user_info_dic['phone']})")
        self.close_db()

    def read_sql(self):
        try:
            phone_num = int(input("예약시 입력한 핸드폰 번호를 입력해주세요('-' 없이) : "))
            try:
                self.init_db()
                self.cursor.execute(f"SELECT * FROM reservation WHERE phone = {phone_num}")
                user_list = list(self.cursor.fetchall())
                self.close_db()
                print('=== 이름 ==== 제품 ==== 수량 ==== 휴대폰 번호====')
                for user in user_list:
                    print(f'   {user[0]}      {user[1]}번      {user[2]}개       {user[3]}    ')
                return

            except:
                print('해당 번호의 예약내역이 없어 메인으로 돌아갑니다!')
                return
        except:
            print('핸드폰 번호를 정확히 입력해주세요!')
            return self.read_sql()

    def del_sql(self):
        try:
            user_name = str(input("이름을 입력해주세요 : "))
            phone_num = int(input("예약시 입력한 핸드폰 번호를 입력해주세요('-' 없이) : "))    
            self.init_db()
            self.cursor.execute(
                f"DELETE FROM reservation WHERE phone = {phone_num} AND name = '{user_name}'" )
            self.close_db()
        except:
            print('정확한 핸드폰 번호를 입력해주세요!')
            return 


class ReservationSystem():    
    def print_menu(self):
        print('''
        ============= 예약 구매 페이지 입니다 ================
            [RTX 4000 시리즈] (모든 요금은 VAT 포함입니다!)
                [1] RTX4800TI - 1,999,000원 
                [2] RTX4800   - 1,484,000원
                [3] RTX4700TI - 1,217,000원
                [4] RTX4700   - 1,489,000원
                [5] RTX4600   - 768,000원
            구매하시겠습니까? [1] Yes    [2] No 
                ''')

    def set_reservation(self):
        self.print_menu()
        try:
            select_num = int(input('번호 입력 : '))
            
            if (select_num == 1) :
                try:
                    print("\n======= RTX4000 예약 구매를 위한 정보를 입력해주세요 =======\n")
                    user_info_dic = dict()
                    user_info_dic['name'] = str(input('고객님의 이름을 입력해주세요 : '))
                    user_info_dic['product'] = int(input('구매할 제품 번호를 입력해주세요 : '))
                    user_info_dic['quantity'] = int(input('구매할 수량을 입력해주세요 :'))
                    user_info_dic['phone'] = int(input("핸드폰 번호를 입력해주세요('-' 없이) : "))
                    return user_info_dic
                except:
                    print('정보를 다시 확인해서 입력해주세요!')
                    return self.set_reservation()
            else:
                print('번호를 다시 입력해주세요!')
                return self.set_reservation()
        except:
            return 


def print_main_message():
    print('\n','==' * 20)
    print('RTX 4000번대 그래픽카드 예약 구매 메인 시스템에 접속하셨습니다:)!\n')
    print('[1] 예약 구매하기 [2] 예약 조회하기 [3] 예약 취소하기 [4] 시스템 종료')

def main():
    reservation_manager = ReservationSystem()
    sql_manager = Sqlite3System()

    while(1):
        print_main_message()
        try: 
            select_num = int(input("실행 번호 : "))

            if (select_num == 1):
                user_info_dic = reservation_manager.set_reservation()
                if (user_info_dic != None):
                    sql_manager.creat_sql(user_info_dic)
                    print('\n예약되었습니다 고객님*^_^*')
                else:
                    print('\n메인 화면으로 돌아갑니다:)')

            elif (select_num == 2):
                sql_manager.read_sql()
                print('\n메인 화면으로 돌아갑니다:)')

            elif (select_num ==3):
                sql_manager.del_sql()
                print('예약이 취소되었습니다!')

            elif (select_num ==4):
                exit()

            else:
                print('상기 숫자를 입력해주세요:)! ')

        except:
            print('숫자로 입력해주세요ㅠ_ㅠ')
            



if __name__ == "__main__":
	main()
