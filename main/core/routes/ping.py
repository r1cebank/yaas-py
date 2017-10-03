from ..tasks.tasks import ping
from ...main import app


@app.route("/ping")
def ping_route():
    # This could also be returning an index.html
    return ping.delay().get()
