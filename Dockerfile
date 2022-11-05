FROM python:3.7

WORKDIR /usr/src/app

COPY test.jpg .

COPY image.py .

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt


CMD ["python", "./image.py"]
