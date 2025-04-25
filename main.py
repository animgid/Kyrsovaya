from flask import Flask, render_template, jsonify
from flask_mysqldb import MySQL

app = Flask(__name__)

# Настройки подключения к MySQL
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'media_bd'
app.config['MYSQL_CHARSET'] = 'utf8mb4'

mysql = MySQL(app)

# Главные страницы
@app.route('/')
@app.route('/home')
def index():
    return render_template("index.html")

@app.route('/register')
def register():
    return render_template("register.html")

@app.route('/log')
def log():
    return render_template("log.html")

@app.route('/films')
def films():
    return render_template("films.html")

@app.route('/anime')
def anime():
    return render_template("anime.html")

@app.route('/serials')
def serials():
    return render_template("serials.html")

# API из MySQL
def fetch_data_from_db(table):
    cur = mysql.connection.cursor()
    cur.execute(f"SELECT id, title, year, genres, rating, poster FROM {table}")
    rows = cur.fetchall()
    cur.close()
    result = []
    for row in rows:
        result.append({
            "id": row[0],
            "title": row[1],
            "year": row[2],
            "genres": row[3].split(','),  # строка -> список
            "rating": row[4],
            "poster": row[5]
        })
    return result

@app.route('/api/films')
def get_films():
    return jsonify(fetch_data_from_db("films"))

@app.route('/api/anime')
def get_anime():
    return jsonify(fetch_data_from_db("anime"))

@app.route('/api/serials')
def get_serials():
    return jsonify(fetch_data_from_db("serials"))


if __name__ == "__main__":
    app.run(debug=True)
