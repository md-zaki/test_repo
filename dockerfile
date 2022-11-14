FROM python:3.8-buster

ENV BACKEND_PORT=80
EXPOSE ${BACKEND_PORT}

WORKDIR /app

RUN pip3 install --upgrade pip
RUN pip install streamlit --upgrade

COPY . .

# WORKDIR /app/streamlit/dependencies

RUN pip3 install -r requirements.txt

# WORKDIR /app/streamlit/


ENTRYPOINT ["streamlit", "run", "test.py", "--server.port=80"]