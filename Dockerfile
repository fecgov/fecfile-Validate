FROM python:3.6
ENV PYTHONUNBUFFERED 1

RUN mkdir /opt/fecfile_validate
WORKDIR /opt/fecfile_validate
ADD . /opt/fecfile_validate
RUN pip3 install -r requirements.txt

EXPOSE 8001
ENTRYPOINT ["gunicorn", "-w", "4", "--bind", "0.0.0.0:8001", "run:app"]
