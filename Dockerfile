FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y openssl

CMD ["sh", "-c", "openssl speed -multi $(grep -ci processor /proc/cpuinfo)"]
