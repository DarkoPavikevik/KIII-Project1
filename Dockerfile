# Базиран на официјален Python образец
FROM python:3.10-slim

# Постави работна директорија
WORKDIR /app

# Копирајте целокупниот код во контејнерот
COPY . /app

# Инсталирајте потребни пакети
RUN pip install --no-cache-dir fastapi uvicorn sqlalchemy psycopg2-binary python-dotenv

# Поставете командата за стартување на FastAPI апликацијата
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
