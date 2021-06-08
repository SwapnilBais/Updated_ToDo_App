FROM python:3
ENV PYTHONUNBUFFERED 1  
WORKDIR /app
ADD . /app  
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt
# COPY . /app
COPY ./ app


# FROM python:3.8.5-alpine


# COPY ./requirements.txt /app/requirements.txt
# RUN pip install -r requirements.txt

COPY ./ app



COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]