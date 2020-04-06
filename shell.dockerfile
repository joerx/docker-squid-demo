FROM debian:buster-slim

RUN apt update && apt -y install curl dnsutils

CMD ["sleep", "infinity"]
