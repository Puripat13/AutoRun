FROM python:3.10-slim

WORKDIR /app
COPY . .

RUN apt-get update && apt-get install -y \
    wget curl unzip gnupg \
    chromium \
    chromium-driver

RUN pip install --no-cache-dir selenium undetected-chromedriver pandas

CMD ["sh", "-c", "python scrap1.py && python scrap2.py && python scrap3.py && python scrap4.py"]
