from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from Flask app with Jenkins & Docker on AWS AUtomation wORKING 1..1! Now start building pythion script"

@app.route("/health")
def health():
    return "OK", 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)