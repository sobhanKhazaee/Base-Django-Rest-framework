# از تصویر پایه Python استفاده می‌کنیم
FROM python:3.11-slim

# تنظیمات کاری پوشه
WORKDIR /app

# کپی کردن فایل requirements.txt به کانتینر
COPY requirements.txt .

# نصب پکیج‌ها از فایل requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# کپی کردن تمامی فایل‌های پروژه به کانتینر
COPY . .

# ست کردن متغیر محیطی برای اجرای Django
ENV PYTHONUNBUFFERED 1

# اجرای دستور برای شروع پروژه با Gunicorn
CMD ["gunicorn", "config.wsgi:application", "--bind", "0.0.0.0:8000"]
