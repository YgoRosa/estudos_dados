# Introdução à AWS — Do Zero até Containers

Este documento é um resumo **de tudo que aprendi até aqui em AWS**
A ideia é entender **o que é cada coisa, por que existe e quando usar**, não decorar termos.

---

## O que é Cloud Computing

Cloud computing é **usar computadores (servidores, armazenamento, rede)** pela internet, sem precisar comprar ou manter hardware próprio.

Em vez de:
- Comprar servidor
- Instalar sistema
- Manter energia, refrigeração e segurança

Você:
- Usa a infraestrutura de um provedor (AWS)
- Paga apenas pelo uso
- Escala quando precisar

A AWS é uma dessas empresas que oferecem cloud.

---

## Por que usar Cloud

### Elasticidade
Consegue aumentar ou diminuir recursos rapidamente.

Exemplo:
- Hoje 10 usuários → servidor pequeno
- Amanhã 10 mil usuários → servidor maior automaticamente

### Escalabilidade
O sistema consegue crescer sem ser refeito.

### Alta disponibilidade
A aplicação pode rodar em **vários locais ao mesmo tempo**, reduzindo chances de ficar fora do ar.

### Custo sob demanda
Você paga apenas:
- Pelo tempo ligado
- Pela quantidade usada

Não existe custo inicial alto.

### Segurança compartilhada
A AWS cuida:
- Do datacenter
- Do hardware
- Da rede física

Você cuida:
- Do código
- Dos dados
- Das permissões

---

## Infraestrutura Global da AWS

A AWS possui datacenters espalhados pelo mundo.

### Region
Local físico grande (ex: São Paulo, Virgínia).

Você escolhe a região ao criar recursos.

---

### Availability Zone (AZ)
Datacenters **isolados** dentro da mesma região.

Se uma AZ cair, outra continua funcionando.

---

### Edge Locations
Pontos de cache e entrega de conteúdo (CloudFront).

Servem para:
- Reduzir latência
- Entregar conteúdo mais rápido

---

## Modelos de Serviço na Cloud

Esses modelos definem **quem gerencia o quê**.

### On-Premises
Tudo é seu:
- Servidor
- Rede
- Segurança
- Atualizações

Maior controle, maior trabalho.

---

### IaaS (Infrastructure as a Service)
A AWS fornece:
- Servidor
- Rede
- Armazenamento

Você gerencia:
- Sistema operacional
- Aplicação

Exemplo: **EC2**

---

### PaaS (Platform as a Service)
A AWS gerencia:
- Servidor
- SO
- Ambiente

Você cuida só:
- Do código

Exemplo: **Elastic Beanstalk**

---

### SaaS (Software as a Service)
Tudo pronto.

Você só usa.

Exemplo: Gmail.

---

## Provisionamento de Recursos

Provisionar é **criar e configurar recursos**.

---

### Console AWS
Criação manual via interface web.

Bom para:
- Aprender
- Testar

---

### CloudFormation
Infraestrutura como código.

Você descreve:
- O que quer
- A AWS cria tudo

Bom para:
- Automação
- Repetibilidade

---

### Elastic Beanstalk
Você envia o código.
A AWS cria:
- EC2
- Load Balancer
- Auto Scaling

Bom para:
- Aplicações simples
- Início rápido

---

## Computação na AWS — EC2

EC2 é um **servidor virtual**.

Você escolhe:
- Tipo de instância (CPU, memória)
- Sistema operacional
- Região

---

### Componentes importantes

**AMI**
Imagem do sistema (Linux, Windows).

**Instance Type**
Define recursos (ex: t2.micro).

**Security Group**
Firewall da instância.

**Key Pair**
Chave para acesso via SSH.

**EBS**
Disco da instância.

---

## Elastic Load Balancing (ELB)

ELB distribui o tráfego entre várias instâncias.

Sem ELB:
- Um servidor cai → sistema cai

Com ELB:
- Tráfego vai para instâncias saudáveis

---

### Tipos

**ALB**
- HTTP/HTTPS
- APIs
- Aplicações web

**NLB**
- TCP/UDP
- Alta performance

---

## Auto Scaling

Auto Scaling cria e remove instâncias automaticamente.

Baseado em:
- CPU
- Carga
- Métricas

Você define:
- Mínimo
- Máximo
- Desejado

---

### ELB + Auto Scaling
- ELB distribui tráfego
- Auto Scaling ajusta quantidade de servidores

---

## Serviços de Mensageria

Servem para **comunicação assíncrona** entre sistemas.

---

### SQS
Fila de mensagens.

- Mensagem entra
- Worker processa depois
- Sistema não trava

---

### SNS
Publicação e assinatura.

- Um evento
- Vários consumidores

---

### Amazon MQ
Mensageria tradicional (legado).

---

## Computação sem Servidor (Serverless)

Você não cria servidor.

O código:
- Executa sob demanda
- Escala automaticamente
- Cobra só pelo uso

---

### AWS Lambda
Executa funções.

---

### API Gateway
Expõe funções como API.

---

## Containers na AWS

Containers empacotam:
- Código
- Dependências

Rodam iguais em qualquer lugar.

---

### ECS
Orquestrador da AWS.

---

### EKS
Kubernetes gerenciado.

---

### Fargate
Containers sem servidor.

Você não gerencia EC2.

---

## Visão Final

AWS oferece vários níveis de controle:
- EC2 → controle total
- Containers → foco na aplicação
- Serverless → foco no código

O objetivo é escolher:
- Simplicidade vs controle
- Custo vs flexibilidade