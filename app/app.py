from flask import Flask
import psycopg2

app = Flask(__name__)

def get_db_connection():
    conn = psycopg2.connect(
        host='192.168.86.3',
        database='webapp_db',
        user='webapp_user',
        password='secure_password'
    )
    return conn

@app.route('/')
def home():
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute('SELECT version()')
    db_version = cur.fetchone()
    conn.close()
    return f"Hello! You're connected to the database: {db_version}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)

