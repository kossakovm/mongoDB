FROM mongo:5.0.7
RUN apt-get update -y
RUN apt-get install wget -y --no-install-recommends
WORKDIR /tmp
RUN wget https://stepik.org/media/attachments/lesson/705682/mongo-dump.tar.gz
RUN tar -xzvf mongo-dump.tar.gz
# COPY setup.sh /tmp
# RUN chmod 755 /tmp/setup.sh
# RUN /tmp/setup.sh