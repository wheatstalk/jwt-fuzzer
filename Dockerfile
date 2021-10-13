ARG FROM=python:2
FROM ${FROM}

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt

VOLUME /output
WORKDIR /output

ENTRYPOINT ["/app/jwt-fuzzer"]