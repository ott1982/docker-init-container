FROM ubuntu:20.04 AS init-container

ADD sh/script1.sh /opt/

ENTRYPOINT ["sh", "-c", "/opt/script1.sh"]

FROM ubuntu:20.04

ADD sh/script2.sh /opt/

COPY --from=init-container /opt/script1.sh /opt/script1.sh

ENTRYPOINT ["sh", "-c", "/opt/script1.sh && /opt/script2.sh"]