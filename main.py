from fastapi import FastAPI
import os

app = FastAPI()

API_PREFIX=os.environ.get("API_PREFIX")

@app.get(API_PREFIX)
def read_root():
    return {"Hello": "World", "env": os.environ.get('HELLO')}

