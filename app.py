from flask import Flask

app = Flask(__name__)

@app.route("/")
def default():
    html = "<h1>Hello from the flask app</h1>"
    return html

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)


