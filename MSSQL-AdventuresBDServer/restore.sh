

for i in {1..50};
do
    /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P "BasesDeDatos234a" -Q "RESTORE DATABASE AdventureWorks2019 FROM  DISK = N'/data/AdventureWorks2019.bak' WITH MOVE 'AdventureWorks2017' TO '/data/AdventureWorks2019.mdf', MOVE 'AdventureWorks2017_Log' TO '/data/AdventureWorks2019_Log.ldf'" -C
    if [ $? -eq 0 ]
    then
        echo "setup.sql completed"
        break
    else
        echo "not ready yet..."
        sleep 2
    fi
done