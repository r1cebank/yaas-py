FROM python:3

LABEL maintainer="siyuangao@gmail.com"

COPY ./src /app

WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
