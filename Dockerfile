FROM  python:3.9.18-slim
RUN apt update && apt install gcc -y
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt
CMD ["/usr/local/bin/uwsgi", "--ini", "payment.ini"]