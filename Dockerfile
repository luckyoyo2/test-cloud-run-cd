FROM python:3.8-buster

COPY api.py api.py
COPY /Users/yoanndiep/code/luckyoyo2/luckyoyo2/gcp/le-wagon-327807-c5ef20c3bc7d.json /credentials.json


RUN pip install -U pip
RUN pip install fastapi uvicorn

CMD uvicorn api:app --host 0.0.0.0 --port $PORT
