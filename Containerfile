FROM ghost:latest

LABEL maintainer="Uco Mesdag <uco@mesd.ag>"
LABEL build_date="2022-10-24T14:25:48CEST"

ENV container=podman

RUN apt-get update ; \
    apt-get install -y sendmail ; \
    apt-get clean ;

COPY start.sh /start.sh

CMD ["sh", "/start.sh"]
