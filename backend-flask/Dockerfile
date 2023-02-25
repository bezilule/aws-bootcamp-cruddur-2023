FROM python:3.10-slim-buster

# Inside Container 
# make a new cfolder inside container
WORKDIR /backend-flask

# Outsid Container -> Inside Container
# this contain the libraries want to install to run the app
COPY requirements.txt requirements.txt

# Inside Container
# Install the python libraries inmages used for the app
RUN pip3 install -r requirements.txt

# Outsid Container -> Inside Container
# . means everything in the current directory
# first period . - /backend-flask (outside container)
# second period . /backend-flask (inside container)
COPY . .

# Set Enviroment Variables (Env Vars)
# Inside container and will remain set when the container is running 
ENV FLASK_ENV=development

EXPOSE ${PORT}

# CMD (Command)
# python3 -m flask run --host=0.0.0.0 --port=4567
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=4567"]