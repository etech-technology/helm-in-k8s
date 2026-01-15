import os
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    msg = os.getenv("MESSAGE", "Hello from Flask app deployed with Helm!")
    return msg

@app.route("/healthz")
def health():
    return "ok"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
