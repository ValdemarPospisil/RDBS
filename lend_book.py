
from sqlalchemy import create_engine, Table, Column, Integer, Boolean, MetaData, select, update, text
from sqlalchemy.orm import sessionmaker
import time
from colorama import init, Fore, Style

engine = create_engine('postgresql://dbuser:dbpwd@localhost/postgres')  # Adjust the connection string as needed
metadata = MetaData()

userbook = Table('userbook', metadata,
                 Column('user_id', Integer, primary_key=True),
                 Column('book_id', Integer, primary_key=True),
                 Column('owned', Boolean))

friends = Table('friends', metadata,
                    Column('user_id', Integer),
                    Column('friend_id', Integer))

Session = sessionmaker(bind=engine)
session = Session()

def lend_book(lender_id, borrower_id, target_book_id):
    try:
        # Check if the lender owns the book
        query = select(userbook.c.user_id, userbook.c.book_id) \
            .where(userbook.c.user_id == lender_id) \
            .where(userbook.c.book_id == target_book_id) \
            .where(userbook.c.owned == True)
        
        result = session.execute(query).fetchone()

        if not result:
            print(f"Lender {lender_id} does not own book {target_book_id}")
            return

        # Check if the borrower already owns the book
        query = select(userbook.c.user_id, userbook.c.book_id) \
            .where(userbook.c.user_id == borrower_id) \
            .where(userbook.c.book_id == target_book_id) \
            .where(userbook.c.owned == True)

        result = session.execute(query).fetchone()

        if result:
            print(f"Borrower {borrower_id} already owns the book {target_book_id}")
            return
        
        query = select(friends.c.user_id, friends.c.friend_id) \
            .where((friends.c.user_id == lender_id) & (friends.c.friend_id == borrower_id))
        
        result = session.execute(query).fetchone()
        
        
        if not result:
            raise Exception(f"Lender {lender_id} and borrower {borrower_id} are not friends")

        # Update lender ownership to False
        update_lender = update(userbook) \
            .where(userbook.c.user_id == lender_id) \
            .where(userbook.c.book_id == target_book_id) \
            .values(owned=False)
        session.execute(update_lender)

        # Insert borrower ownership or update if exists using raw SQL
        raw_sql = text("""
            INSERT INTO userBook (user_id, book_id, owned)
            VALUES (:user_id, :book_id, :owned)
            ON CONFLICT (user_id, book_id)
            DO UPDATE SET owned = :owned
        """)
        session.execute(raw_sql, {'user_id': borrower_id, 'book_id': target_book_id, 'owned': True})

        # Commit the transaction
        session.commit()
        

        print(Fore.GREEN + Style.BRIGHT + "\nBook lending successful!\n")
        print(Fore.CYAN + r"""
        _______________
       /               \
      /    SUCCESS!    \
      \_______________/
        \ ||  ||  || /
         \||__||__||/
          |        |
          |________|
        """)

        print(Fore.YELLOW + Style.BRIGHT + "✨ Hooray! Book lent with joy! ✨\n")

    except Exception as e:
        session.rollback()
        print(Fore.RED + f"An error occurred: {e}")



def prompt_and_lend_book():
    lender_id = int(input("Enter the lender's user ID: "))
    borrower_id = int(input("Enter the borrower's user ID: "))
    target_book_id = int(input("Enter the target book ID: "))
    lend_book(lender_id, borrower_id, target_book_id)

prompt_and_lend_book()
