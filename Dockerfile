
FROM alpine:latest

WORKDIR /app

RUN apk update && apk add --no-cache nano curl

RUN curl https://raw.githubusercontent.com/ajenti/ajenti/1.x/scripts/install.sh | sh -s -

EXPOSE 8000

CMD ["ajenti-panel", "-v", "--no-detach"]
