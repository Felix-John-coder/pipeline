FROM python:3.14-alpine

WORKDIR /app

COPY src/requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]