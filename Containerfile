FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_template_merito create-db
RUN flask_template_merito populate-db
RUN flask_template_merito add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_template_merito", "run"]
