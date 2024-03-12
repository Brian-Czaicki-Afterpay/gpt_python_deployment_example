FROM python:3.9-buster

RUN pip install poetry

COPY . .

RUN poetry install

ENTRYPOINT ["poetry", "run", "python", "-m", "app.py"]
