FROM python:3.9-alpine

ENV PYTHONBUFFERED 1

COPY requirements.txt .

# RUN apk add python3-dev
# RUN apk add gpgme-dev
# RUN apk add libc-dev
# RUN apk add gcc jpeg-dev zlib-dev libffi-dev freetype-dev musl-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev cairo-dev pango-dev gdk-pixbuf-dev
# RUN apk add mariadb-dev

# #RUN apk add --update --no-cache postgresql-client
# #RUN apk add --update --no-cache --virtual .temp-build-deps \
# #        gcc libc-dev linux-headers postgresql-dev

# RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#RUN apk del .temp-build-deps


RUN mkdir app
WORKDIR /app
COPY . /app
EXPOSE 8020
CMD ["python","manage.py","runserver","0.0.0.0:8020"]
