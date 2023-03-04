FROM python:3.11
WORKDIR /app

ADD Pipfile Pipfile.lock ./
RUN pip install pipenv
RUN pipenv install 

ADD script.py . 

ENV INPUT_DIR='/app/input'
ENV OUTPUT_DIR='/app/output'


CMD ["tail","-f","/dev/null"]
