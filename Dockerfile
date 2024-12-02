FROM ubuntu:20.04

COPY requirements.txt /app/

WORKDIR /app

RUN apt-get update && \
    apt-get install -y ffmpeg libsm6 libxext6 && \
    apt-get install --no-install-recommends -y curl screen python3 build-essential python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python3", "train.py"]
