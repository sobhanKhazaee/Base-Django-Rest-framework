# Base Django Rest Framework

این پروژه یک بیس برای ساخت پروژه‌های Django Rest Framework (DRF) است. این پروژه شامل **Swagger** برای مستندات API و **JWT** برای احراز هویت است و به‌طور کامل **Dockerized** شده است.

## ویژگی‌ها

- **Django Rest Framework (DRF)** برای ساخت API‌ها
- **Swagger** برای مستندات خودکار API
- **JWT** برای احراز هویت
- **Docker** برای راه‌اندازی سریع و ایزوله‌شده

## راه‌اندازی پروژه

# 1. Clone کردن repository فعلی
```
git clone https://github.com/sobhanKhazaee/Base-Django-Rest-framework.git
```
```
cd Base-Django-Rest-framework
```

# 2. حذف remote قبلی
```
git remote remove origin
```

# 3. ایجاد یک repository جدید در GitHub
# (از طریق وب‌سایت GitHub یک repo جدید بسازید)

# 4. اضافه کردن remote جدید
```
git remote add origin https://github.com/YOUR_USERNAME/NEW_REPO_NAME.git
```

# 5. Push کردن تمام branch‌ها
```
git push -u origin main
```
مطمئن شوید که Docker و Docker Compose روی سیستم شما نصب شده است.

برای ساخت و راه‌اندازی پروژه با Docker، از دستور زیر استفاده کنید:



```
   docker-compose up --build
```
این دستور Docker Compose کانتینرهای لازم برای پروژه شامل سرویس‌های Django، Celery، Redis و PostgreSQL را می‌سازد و راه‌اندازی می‌کند.

پس از بالا آمدن سرویس‌ها، API پروژه در آدرس http://0.0.0.0:8000 در دسترس خواهد بود و مستندات Swagger در آدرس http://0.0.0.0:8000/swagger/ قابل مشاهده است.

برای استفاده از JWT، شما می‌توانید توکن را از طریق /api/token/ دریافت کرده و از آن برای احراز هویت در سایر APIها استفاده کنید.

فایل‌های موجود
Dockerfile: تنظیمات Docker برای پروژه
docker-compose.yml: تنظیمات Docker Compose برای راه‌اندازی سرویس‌ها
settings.py: تنظیمات اصلی Django، از جمله پیکربندی JWT و Swagger
urls.py: تنظیمات URL‌ها برای Swagger و API‌ها
نکات مهم
پس از راه‌اندازی موفقیت‌آمیز سرویس‌ها، باید دیتابیس‌ها را مایگریت کنید:

content_copy
```
  docker-compose exec django python manage.py migrate
```
برای اضافه کردن اپلیکیشن‌ها یا تنظیمات بیشتر، می‌توانید تنظیمات پروژه را در فایل‌های مختلف تغییر دهید.
مجوز
این پروژه تحت مجوز MIT منتشر شده است.



### توضیحات

- در بخش **ویژگی‌ها**، به مهم‌ترین ویژگی‌های پروژه اشاره شده است.
- در بخش **راه‌اندازی پروژه**، دستورالعمل‌های دقیقی برای کلون کردن پروژه، ساخت کانتینرها با استفاده از `docker-compose up --build` و دسترسی به Swagger و JWT ارائه شده است.
- در بخش **فایل‌های موجود**، فهرستی از فایل‌های کلیدی پروژه آورده شده است.
- همچنین در انتها نکاتی مانند نیاز به اجرای دستورات مایگریت برای دیتابیس ذکر شده است.

مطمئن شو که در قسمت‌های مختلف مسیر فایل‌ها را به درستی قرار داده‌ای، خصوصاً برای آدرس‌هایی مثل Swagger
