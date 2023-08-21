FROM python:alpine3.18

WORKDIR /app

ENV REDIS_HOST=redis

COPY ./giropops-senhas /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "flask" ]

CMD ["run", "--host=0.0.0.0"]