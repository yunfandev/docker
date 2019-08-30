FROM rabbitmq:3.7-management

RUN apt-get update || : && \
apt-get install -y wget unzip && \
rm -rf /var/lib/apt/lists/*

RUN wget https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip && \
unzip rabbitmq_delayed_message_exchange-20171201-3.7.x.zip && \
rm -f rabbitmq_delayed_message_exchange-20171201-3.7.x.zip && \
mv rabbitmq_delayed_message_exchange-20171201-3.7.x.ez plugins/

RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange