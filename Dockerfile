
FROM python:3.10-slim


WORKDIR /app


COPY . /app


RUN pip install --no-cache-dir fastapi uvicorn sqlalchemy psycopg2-binary python-dotenv


CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
