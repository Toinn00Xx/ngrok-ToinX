# ip_logger.py

from flask import Flask, request
from flask_ngrok import run_with_ngrok
import datetime

app = Flask(__name__)
run_with_ngrok(app)

@app.route('/')
def home():
    ip = request.remote_addr
    user_agent = request.headers.get('User-Agent')
    now = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    with open("ips.txt", "a") as log:
        log.write(f"[{now}] IP: {ip} - UA: {user_agent}\n")
    return "<h1>Bem-vindo!</h1><p>Seu IP foi registrado com sucesso.</p>"

if __name__ == '__main__':
    app.run()
