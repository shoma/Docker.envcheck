from flask import Flask
import os
import json

app = Flask(__name__)

@app.route("/")
def hello():
    return json.dumps(dict(os.environ), sort_keys=True, indent=4)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port='8080', debug=None)
