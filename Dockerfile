#image
FROM python:latest
#env to stop django from buffering and "loop"
ENV PYTHONUNBUFFERED=1
ENV PYTHNONUNBUFFERED=1
#creating working dir and copy files to it
WORKDIR /code
COPY requirements.txt /code/
# Install Dependencies
RUN pip install -r requirements.txt
COPY . /code/