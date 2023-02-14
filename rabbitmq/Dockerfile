FROM rabbitmq:3.11-management

RUN apt-get update || : && \
apt-get install -y wget && \
rm -rf /var/lib/apt/lists/*

RUN wget -O /opt/rabbitmq/plugins/rabbitmq_delayed_message_exchange-3.11.1.ez https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/3.11.1/rabbitmq_delayed_message_exchange-3.11.1.ez
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
RUN rabbitmq-plugins enable --offline rabbitmq_consistent_hash_exchange