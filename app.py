from flask import Flask, render_template,request
import mysql.connector

app = Flask(__name__)

connection = mysql.connector.connect(host="localhost",user="root",password="",database="blood bank")

mycursor = connection.cursor()

@app.route('')
def home():
    return render_template('')