FROM python:3.9
RUN apt-get update -y
RUN apt-get upgrade -y

WORKDIR /app

COPY ./webapp/requirements.txt . 
RUN pip install -r requirements.txt
COPY ./webapp/src ./src

CMD ["python", "./src/manage.py", "runserver", "0.0.0.0:8888"]