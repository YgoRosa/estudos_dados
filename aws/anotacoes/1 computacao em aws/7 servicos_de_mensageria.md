# Serviços de Mensageria na AWS

## O que são
Serviços usados para **enviar, armazenar e processar mensagens** entre sistemas de forma assíncrona, sem dependência direta entre produtor e consumidor.

---

## Para que servem
- Desacoplar sistemas
- Evitar sobrecarga
- Aumentar resiliência
- Processar tarefas em segundo plano

---

## Principais serviços da AWS

### Amazon SQS (Simple Queue Service)
- Serviço de fila de mensagens
- Um produtor envia mensagens
- Um ou mais consumidores processam
- Garante que mensagens não sejam perdidas

Uso comum:
- Processamento assíncrono
- Filas de tarefas
- Pipelines de dados

---

### Amazon SNS (Simple Notification Service)
- Modelo publish/subscribe (Pub/Sub)
- Um produtor publica
- Vários assinantes recebem (email, SMS, SQS, Lambda)
- Ideal para notificações e eventos

Uso comum:
- Alertas
- Eventos
- Fan-out de mensagens

---

## Diferença rápida
- **SQS**: fila de processamento
- **SNS**: notificação e eventos

---

## Exemplo simples
- Aplicação envia mensagem para SQS
- Worker consome e processa depois
- Sistema fica desacoplado e resiliente