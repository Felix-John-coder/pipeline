FROM python:slim

WORKDIR /app

COPY src/requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]