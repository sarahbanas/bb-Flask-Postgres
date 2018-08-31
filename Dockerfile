FROM python:3.7.0

RUN apk update && apk add build-base postgresql-dev

COPY . /app
WORKDIR /app

ENV INSTALL_PATH /app
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

ENV NAME flask
ENV FLASK_APP=setup.py
ENV FLASK_DEBUG=1
ENV FLASK_ENVIRONMENT=development

EXPOSE 80
CMD ["python", "setup.py"]
