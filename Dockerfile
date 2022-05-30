FROM python:3.9-slim-bullseye

RUN mkdir /app
WORKDIR /app
ADD requirements.txt /app/
RUN pip install -r requirements.txt
ADD . /app/
EXPOSE 8050

# ENTRYPOINT [ "python" ]
# CMD ["app.py"]
CMD gunicorn -b 0.0.0.0:80 app:app