# Introdução a Redes na AWS

## O que são redes na AWS
Redes na AWS são o conjunto de serviços que permitem **comunicação entre recursos** (EC2, bancos, containers) e com a internet, de forma **segura e controlada**.

---

## Por que redes são importantes
Sem rede:
- Recursos não se comunicam
- Não existe acesso externo
- Não existe segurança adequada

Com rede bem definida:
- Comunicação controlada
- Isolamento de sistemas
- Segurança
- Escalabilidade

---

## Principal serviço de rede
### Amazon VPC (Virtual Private Cloud)
É uma **rede virtual isolada**, criada dentro da AWS.

Funciona como:
- Um “datacenter virtual”
- Com controle total de IPs, sub-redes e acessos

---

## O que a VPC permite definir
- Faixa de IP (CIDR)
- Sub-redes
- Regras de acesso
- Conexão com internet
- Comunicação entre recursos

---

## Conceito importante
Por padrão:
- Toda VPC é **isolada**
- Nada entra ou sai sem configuração explícita

Isso é base de segurança na AWS.

---

## Visão simples
- EC2, banco e serviços rodam **dentro da VPC**
- A VPC controla **quem pode falar com quem**
