FROM alpine:3.8

RUN apk add curl
RUN apk add openjdk8
RUN apk add --update bash && rm -rf /var/cache/apk/*


ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}" 



COPY ./ /var
COPY ./script.sh /var
#RUN ./var/aem-6.4/crx-quickstart/bin/start
#RUN cd /var/aem-6.4/crx-quickstart/bin

#WORKDIR /var/aem-6.4/crx-quickstart/bin


RUN chmod +x ./var/aem-6.4/crx-quickstart/bin/start
RUN chmod +x /var/script.sh
ENTRYPOINT ["/var/script.sh"]














