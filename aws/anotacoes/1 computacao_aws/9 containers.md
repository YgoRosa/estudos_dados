# Containers na AWS

## O que são containers
Containers empacotam **aplicação + dependências** em um ambiente isolado, garantindo que o código rode igual em qualquer lugar.

Mais leves que máquinas virtuais (EC2).

---

## Para que servem
- Padronizar ambiente
- Facilitar deploy
- Escalar aplicações
- Executar microserviços

---

## Serviços de containers na AWS

### Amazon ECS (Elastic Container Service)
- Orquestrador de containers da AWS
- Gerencia containers Docker
- Pode rodar em EC2 ou Fargate

---

### Amazon EKS (Elastic Kubernetes Service)
- Kubernetes gerenciado pela AWS
- Mais complexo
- Usado em ambientes grandes e padronizados

---

### AWS Fargate
- Executa containers **sem gerenciar servidor**
- Você não cria EC2
- Paga por uso
- Muito usado com ECS

---

## Diferença rápida
- **ECS**: simples, nativo AWS
- **EKS**: Kubernetes, mais complexo
- **Fargate**: serverless para containers

---

## Quando usar
- Aplicações containerizadas
- APIs
- Microserviços
- Jobs e pipelines

---

## Comparação com EC2
- EC2: gerencia servidor
- Containers: gerencia só a aplicação
- Fargate: gerencia só o código
