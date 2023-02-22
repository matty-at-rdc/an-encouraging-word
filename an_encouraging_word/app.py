from flask import Flask, render_template

def create_app():

    app = Flask(__name__)

    @app.route('/')
    @app.route('/<name>')
    def index(name=None):
        name = str(name).capitalize() if isinstance(name, str) else None
        return render_template("index.html", name=name)

    return app
