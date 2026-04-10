FROM python:3.14-slim-bookworm

ENV PYTHONUNBUFFERED=1

ENV IMMICH_API_TOKEN="yourimmichtokenhere"
ENV IMMICH_HOST="host/ip"
ENV IMMICH_PORT="2283"
#has to be EXPORT_PORT 8000 or else it does not work, same applies to the env file
ENV EXPORTER_PORT="8000"
ENV EXPORTER_LOG_LEVEL="INFO"

# Install package
WORKDIR /code
COPY . .

RUN pip3 install --no-cache-dir .

ENTRYPOINT [ "immich_exporter" ]
