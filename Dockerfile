FROM python:3.9.1


RUN pip install pandas sqlalchemy psycopg2 requests pyarrow

# create directory
WORKDIR /app
# COPY ingest_data.py ingest_data.py 
COPY pipeline.py pipeline.py 

# ENTRYPOINT [ "python", "ingest_data.py" ]
ENTRYPOINT [ "python", "pipeline.py"]
# ENTRYPOINT [ "bash"]
