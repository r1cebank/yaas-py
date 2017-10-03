from .main import app


@app.task
def ping():
    return 'pong'
