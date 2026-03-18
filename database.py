import mysql.connector

def get_connection():     # function to establish database connection
    try:
        conn = mysql.connector.connect(
            host = "localhost",
            user="root",
            password="Admin@123",
            database="inventory_db"
        )
        return conn
    except mysql.connector.Error as e:
        print(f"connection Error : {e}")
        return None
if __name__ == "__main__":
    conn = get_connection()
    if conn:
        print("✅ Connected to MySQL Successfully!")
        conn.close()
    else:
        print("❌ Connection Failed!")