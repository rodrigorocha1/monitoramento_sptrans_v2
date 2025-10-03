#!/bin/sh
# Espera o broker Kafka estar pronto
while ! nc -z broker 9092; do
  echo "Esperando Kafka..."
  sleep 3
done

# Executa o kafka-exporter
/kafka_exporter --kafka.server=broker:9092 --jmx-port=9999
