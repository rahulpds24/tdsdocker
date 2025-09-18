From docker.io/python:3.12-slim

WORKDIR /app

COPY requirement.txt .

RUN pip3 install --no-cache-dir -r requirement.txt

COPY . .

CMD ["python3", "app.py"]