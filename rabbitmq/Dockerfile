FROM rabbitmq:3.8-management

RUN apt-get update || : && \
apt-get install -y wget && \
rm -rf /var/lib/apt/lists/*

RUN wget -O /opt/rabbitmq/plugins/rabbitmq_delayed_message_exchange-3.8.0.ez https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange