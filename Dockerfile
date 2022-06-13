FROM python:3.9
ENV PYTHONUNBUFFERED=1
ARG DJANGO_SUPERUSER_USERNAME=admin
ARG DJANGO_SUPERUSER_PASSWORD=admin
ARG DJANGO_SUPERUSER_EMAIL=admin@example.com
WORKDIR /aluraflix
COPY requirements.txt /aluraflix/
RUN pip install -U pip setuptools && pip install -r requirements.txt
COPY . /aluraflix/
EXPOSE 8000
RUN python manage.py migrate
RUN python manage.py createsuperuser --no-input
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]