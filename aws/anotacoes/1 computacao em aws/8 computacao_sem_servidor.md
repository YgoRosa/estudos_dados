# Computação sem Servidor (Serverless)

## O que é
Modelo de computação onde **não há gerenciamento de servidores** por parte do usuário.  
Você escreve o código e a AWS executa sob demanda.

O servidor existe, mas:
- Não cria EC2
- Não gerencia sistema operacional
- Não gerencia escala

---

## Como funciona
- Código fica inativo
- Um evento acontece
- A função é executada
- Você paga apenas pelo tempo de execução

---

## Principais serviços

### AWS Lambda
- Executa funções sob demanda
- Escala automaticamente
- Base da computação serverless na AWS

### Amazon API Gateway
- Expõe funções Lambda como APIs HTTP
- Integração direta com Lambda

---

## Vantagens
- Nenhuma gestão de servidor
- Escalabilidade automática
- Custo sob demanda
- Ideal para tarefas curtas e eventos

---

## Limitações
- Tempo máximo de execução
- Não indicado para processos longos
- Menor controle do ambiente

---

## Quando usar
- APIs simples
- ETL leve
- Processamento orientado a eventos
- Automação
