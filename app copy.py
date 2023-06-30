from flask import Flask,render_template,request
import mysql.connector
connection = mysql.connector.connect(host='localhost',user='root',password='',database='blood bank')
cursor = connection.cursor()
app = Flask(__name__)
datab={'maya':'1234'}


@app.route('/')
def home():
    return render_template ("/index.html")

@app.route('/about')
def about():
    return render_template("/about.html")

@app.route('/contact')
def contact():
    return render_template("/contact.html")

@app.route('/sample',methods=['GET','POST'])
def sample():
    username=request.form['username']
    pwd = request.form['password']

    if username not in datab:
        return render_template('/index.html',msg='Invalid Username')
    elif datab[username]!= pwd:
        return render_template('/index.html',msg='Invalid Password')
    else:
        return render_template('/home.html')
@app.route('/read', methods=['GET','POST'])
def read():
    if request.method=='POST':
        regno=request.form.get('regno')
        name=request.form.get('name')
        age=request.form.get('age')
        phno=request.form.get('phno')
        email=request.form.get('email')
        data=(regno,name,age,phno,email)

        query="INSERT INTO   student (`REGNO`, `NAME`, `AGE`, `PHNO`, `EMAIL`)   VALUES (%s,%s,%s,%s,%s)"
        cursor.execute(query,data)
        connection.commit()
        return render_template('/home.html')
@app.route('/viewall')
def viewall():
    query = "SELECT * FROM student"
    cursor.execute(query)
    data = cursor.fetchall()
    return render_template('/viewall.html',sqldata=data)








if __name__=='__main__':
    app.run(port=4500)

