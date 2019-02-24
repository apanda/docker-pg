FROM ubuntu
RUN apt-get update && apt-get install -y postgresql-10
RUN mkdir /postgres
RUN chown postgres:postgres /postgres
COPY start.sh /bin/start.sh
RUN chmod 755 /bin/start.sh
USER postgres
RUN /usr/lib/postgresql/10/bin/initdb -D /postgres/
ENV PGDATA "/postgres"
