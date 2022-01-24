FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN python3 -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

CMD [ "python3", "billing_system.py"]