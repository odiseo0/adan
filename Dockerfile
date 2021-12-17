FROM python:3.9.6-slim-buster

ENV PYTHONUNBUFFERED 1 

# Dependencies
COPY ./requirements.txt .
RUN pip install -r ./requirements.txt

WORKDIR /app
COPY ./app.py /app/

EXPOSE 80

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80", "--reload"]
