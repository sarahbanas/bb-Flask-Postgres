FROM python:3.7.0

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENV NAME flask
ENV FLASK_APP=setup.py
ENV FLASK_DEBUG=1


EXPOSE 80
CMD ["python", "setup.py"]