FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask create-db
RUN flask populate-db
RUN flask add-user -u admin -p admin
EXPOSE 5000
CMD ["flask", "run"]
