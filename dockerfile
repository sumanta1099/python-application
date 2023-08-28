FROM python:alpine
RUN apk update && apk add --no-cache bash 
WORKDIR /app
COPY mypythonapp/ /app 
# COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 80
ENTRYPOINT [ "python3", "main.py"]