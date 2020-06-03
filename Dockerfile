FROM python:3.8.1

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]