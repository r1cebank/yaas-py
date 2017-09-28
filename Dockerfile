FROM python:3

LABEL maintainer="siyuangao@gmail.com"

COPY ./src /app

WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]
