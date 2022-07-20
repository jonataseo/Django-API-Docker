FROM python:latest

ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY . . 

# Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt

VOLUME /django_src 

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
