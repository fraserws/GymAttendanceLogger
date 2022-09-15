FROM python:3.7
RUN apt-get update && apt-get -y install cron vim python-requests python pymongo datetime python-textdistance

WORKDIR /app
COPY crontab /etc/cron.d/crontab
COPY Log.py /app/Log.py
RUN chmod 0644 /etc/cron.d/crontab
RUN /usr/bin/crontab /etc/cron.d/crontab

# run crond as main process of container
CMD ["cron", "-f"]
