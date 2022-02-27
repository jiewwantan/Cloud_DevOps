from flask import Flask
import requests

app = Flask(__name__)

@app.route('/')
def hello_world():
    
    return 'Hello, World!'

@app.route('/btc')
def hello_eslam():
    response = requests.get('https://api.coindesk.com/v1/bpi/currentprice.json')
    data = response.json()
    btcValue = "<h1> BTC price "+data["bpi"]["USD"]["rate"]+" USD </h1>"
    return btcValue

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=True)