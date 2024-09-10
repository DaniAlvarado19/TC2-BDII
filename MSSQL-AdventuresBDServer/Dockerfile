FROM mcr.microsoft.com/mssql/server:2019-latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=BasesDeDatos234a

COPY ./AdventureWorks2019.bak /data/AdventureWorks2019.bak
COPY ./restore.sh /data/
COPY ./entrypoint.sh /data/

USER root
RUN chmod 777 /data/restore.sh 
RUN chmod +x /data/entrypoint.sh 

CMD ["/data/entrypoint.sh"]
