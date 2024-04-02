FROM python

WORKDIR /cache
COPY ./requirements.txt .

RUN pip install -r ./requirements.txt

WORKDIR /app
COPY ./main.py .

CMD [ "uvicorn", "main:app", "--host", "0.0.0.0" ]
