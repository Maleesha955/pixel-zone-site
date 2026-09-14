from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

# Vercel Serverless Function එකට අවශ්‍ය කොටස
app = app

if __name__ == '__main__':
    app.run(debug=True)
