from flask import Flask, render_template
import mysql.connector

app = Flask(__name__, static_url_path='/static')


def eve_classes_data():
    cfg = {
        'user': 'root',
        'password': 'root',
        'host': 'database',
        'database': 'Elsword',
        'port': '3306'
    }
    link = mysql.connector.connect(**cfg)
    cursor = link.cursor(dictionary=True)

    cursor.execute('SELECT * FROM EveClasses')
    eve_classes = cursor.fetchall()

    cursor.close()
    link.close()

    return eve_classes


def eve_skills_data():
    cfg = {
        'user': 'root',
        'password': 'root',
        'host': 'database',
        'database': 'Elsword',
        'port': '3306'
    }
    link = mysql.connector.connect(**cfg)
    cursor = link.cursor(dictionary=True)

    cursor.execute('SELECT * FROM EveSkills')
    eve_skills = cursor.fetchall()

    cursor.close()
    link.close()

    return eve_skills

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/eve_classes')
def eve_classes():
    eve_classes = eve_classes_data()
    return render_template('eve_classes.html', eve_classes=eve_classes)

@app.route('/eve_skills')
def eve_skills():
    eve_skills = eve_skills_data()
    return render_template('eve_skills.html', eve_skills=eve_skills)

if __name__ == '__main__':
    app.run(host='0.0.0.0')