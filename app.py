from flask import Flask, render_template, request, jsonify
import mysql.connector

app = Flask(__name__)

# Connect to MySQL database
mydb = mysql.connector.connect(
    host="localhost",
    port=3307, 
    user="root",
    password="Sa297#2007ma",
    database="studentdb"
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
    app.run(debug=True)
