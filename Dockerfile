#image
FROM python:latest
#env to stop django from buffering and "loop"
ENV PYTHONUNBUFFERED=1
#creating working dir and copy files to it
WORKDIR /app
COPY . . 
# Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt
#creating volume
VOLUME /django_src 
#expose port
EXPOSE 8080

#command to run when container is up
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
