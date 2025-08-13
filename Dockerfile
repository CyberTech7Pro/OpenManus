FROM python:3.11-slim-buster
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN mkdir -p /app/config
COPY config/config.toml /app/config/config.toml
EXPOSE 8000
CMD ["python", "main.py"]
