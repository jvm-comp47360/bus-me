FROM python:3
WORKDIR backend
ADD . .
RUN pip install -r requirements.txt

EXPOSE 8000
CMD ["waitress-serve", "--port=8000", "busme.wsgi:application"]