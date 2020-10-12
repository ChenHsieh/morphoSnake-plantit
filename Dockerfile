# set base image (host OS)
FROM python:3.7.4
RUN pip install --upgrade pip
ADD requirements.txt /
ADD morphosnake.py /
ADD img/ /img/
RUN pip install -r requirements.txt
CMD ["python", "./morphosnake.py"]
