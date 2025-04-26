from flask import Flask, request
from flask_ngrok import run_with_ngrok

app = Flask(__name__)
run_with_ngrok(app)

@app.route('/')
def log_ip():
    ip = request.remote_addr
    print(f"IP Logged: {ip}")
    return f"IP Logged: {ip}"

if __name__ == "__main__":
    app.run()
