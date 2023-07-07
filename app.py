from flask import Flask,render_template,request
import mysql.connector
connection = mysql.connector.connect(host='localhost',user='root',password='',database='blood bank')
mycursor = connection.cursor()
app = Flask(__name__)

@app.route('/')
def home():
    return render_template ("/home.html")

@app.route('/home.html')
def landing():  
    return render_template ("/home.html")

@app.route('/ernakulam.html')
def ernakulam():
    query = "SELECT * FROM `ekm_hsp`"
    mycursor.execute(query)
    data=mycursor.fetchall()
    print(data)
    return render_template("/ernakulam.html",sqldata=data)

@app.route('/palakkad.html')
def palakkad():
    query = "SELECT * FROM `palakkad_hsp`"
    mycursor.execute(query)
    data=mycursor.fetchall()
    print(data)
    return render_template("/palakkad.html",sqldata=data)

@app.route('/thrissur.html')
def thrissur():
    query = "SELECT * FROM `thrissur_hsp`"
    mycursor.execute(query)
    data=mycursor.fetchall()
    print(data)
    return render_template("/thrissur.html",sqldata=data)





if __name__=='__main__':
    app.run(port=4537)
