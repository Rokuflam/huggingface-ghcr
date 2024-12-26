FROM python:3.8

COPY ./requirements.txt /webapp/requirements.txt

WORKDIR /webapprepo

RUN pip install -r requirements.txt

COPY webapp/* /webapprepo

ENTRYPOINT [ "uvicorn" ]

CMD [ "--host", "0.0.0.0", "main:app" ]
