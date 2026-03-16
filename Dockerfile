FROM python:3.12-slim

WORKDIR /app

RUN pip install --no-cache-dir cryptography==46.0.5

COPY proxy/tg_ws_proxy.py .

EXPOSE 1080 8080

ENTRYPOINT ["python", "tg_ws_proxy.py"]
CMD ["--host", "0.0.0.0", "--port", "1080", "--monitor-port", "8080"]