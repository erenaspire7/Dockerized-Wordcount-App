FROM python:3.8.1

ENV APP_HOME /app
WORKDIR $APP_HOME

#COPY ["requirements.txt", "app.py", "config.py", ".env", "./"]
COPY . /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]