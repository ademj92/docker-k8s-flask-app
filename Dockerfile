#Dockerfile
FROM python:3.8-slim

#Install Flask
RUN pip install flask

#Copy the application code
COPY app.py /app/app.py
WORKDIR /app

#Expose port 5000
EXPOSE 5000

#Run the Flask app
CMD ["python", "app.py"]
