# start by pulling the python image
FROM python:3.10-alpine

ENV FLASK_APP=server.py

ENV FLASK_RUN_HOST=0.0.0.0

# copy the requirements file into the image
COPY ./requirements.txt /app/requirements.txt

# switch working directory
WORKDIR /app

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . /app

EXPOSE 718

# configure the container to run in an executed manner
ENTRYPOINT [ "python" ]

CMD ["flask", "run" ]