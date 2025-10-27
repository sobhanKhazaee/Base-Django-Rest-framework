FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade pip

RUN pip install --no-cache-dir --default-timeout=100 -r requirements.txt
COPY . .

# ست کردن متغیر محیطی برای اجرای Django
ENV PYTHONUNBUFFERED 1

# اجرای دستور برای شروع پروژه با Gunicorn
CMD ["gunicorn", "config.wsgi:application", "--bind", "0.0.0.0:8000"]
