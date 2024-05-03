from flask import Flask, render_template, request, jsonify
import mysql.connector

app = Flask(__name__)

# Connect to MySQL database
mydb = mysql.connector.connect(
    host="db_file",
    port=3306, 
    user="root",
    password="Sa297#2007ma",
    database="Studentdb"
)

@app.route('/')
def index():
    return render_template('webcode.html')

@app.route('/get_student_info', methods=['POST'])
def get_student_info():
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM Student")
    students = cursor.fetchall()
    cursor.close()
    return jsonify(students)

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)
