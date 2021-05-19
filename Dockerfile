FROM alpine:3.3

LABEL author="Pawel Miatkowski"

ENV CRONTAB_FILE=crontab.txt

WORKDIR /

RUN touch /$CRONTAB_FILE
# Default content of cron job. This should be overwritten in init.sh file.
RUN echo "* * * * * /script.sh >> /var/log/output.log" >> $CRONTAB_FILE

ADD init.sh /init.sh
RUN chmod 755 /init.sh

CMD ["sh", "init.sh"]