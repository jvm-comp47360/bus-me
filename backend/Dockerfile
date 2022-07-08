FROM python:3
WORKDIR backend
ADD . .
RUN pip install -r requirements.txt

RUN python manage.py makemigrations
RUN python manage.py migrate

ENV PYTHONUNBUFFERED 1

EXPOSE 8000
CMD ["waitress-serve", "--port=8000", "busme.wsgi:application"]