echo "This Is A OneNode Simple Snowflake(python code) Server"
echo "DOCS: https://pysnowflake.readthedocs.io/en/latest/"
echo "Docs is old ,have some error(like: --host replaced to --address in .-> in dockerfile you can see)"
docker rm pysnowflake
docker rmi pysnowflake:v1
docker build -f./dockerfile -t pysnowflake:v1 .
docker run -d --name=pysnowflake -p 8910:8910 --restart=always pysnowflake:v1