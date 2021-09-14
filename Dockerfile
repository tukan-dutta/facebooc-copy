FROM ubuntu

COPY . /facebooc
WORKDIR /facebooc

RUN apt-get update
RUN apt-get install -yq build-essential make libsqlite3-dev sqlite3

RUN make all

EXPOSE 16000
CMD ["bin/facebooc"]