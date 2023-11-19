FROM python:3.12
WORKDIR /app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY ./app .
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
# docker-compose up --build -d