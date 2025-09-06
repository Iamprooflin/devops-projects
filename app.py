from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Hello, DevOps World! 🚀 — Deployed via AWS CodePipeline + CodeDeploy"

if __name__ == "__main__":
    # Run on port 5000 so we don't need root privileges
    app.run(host="0.0.0.0", port=5000)