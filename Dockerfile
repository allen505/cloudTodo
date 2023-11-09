# syntax=docker/dockerfile:1

FROM python:3.8
WORKDIR /src

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . /src

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

EXPOSE 5000

# CMD ["python", "app.py"]
CMD ["flask", "run"]
