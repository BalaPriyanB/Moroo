FROM ubuntu:latest

WORKDIR /app

COPY install.sh .

RUN chmod +x install.sh && ./install.sh

EXPOSE 8000

CMD ["ajenti-panel", "-v", "--no-detach"]
