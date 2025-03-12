# Dockerfile
FROM gcc:latest

WORKDIR /app

COPY . /app

RUN make -C .

CMD ["./hello"]
