from flask import Flask, render_template
from markupsafe import escape

app = Flask(__name__)

@app.route('/')
def homepage():
    return render_template('homepage.html')

@app.route("/hello/<name>")
def hello(name='World'):
    return f"Hello, {escape(name)}!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)