# Amazon VPC

## O que é
A Amazon VPC (Virtual Private Cloud) é uma **rede virtual isolada** dentro da AWS onde seus recursos rodam (EC2, bancos, containers).

Funciona como um **datacenter virtual**, controlado por você.

---

## Para que serve
- Isolar recursos
- Controlar tráfego de rede
- Definir regras de acesso
- Criar arquiteturas seguras

---

## O que você define em uma VPC
- Faixa de IP (CIDR)
- Sub-redes
- Rotas
- Acesso à internet
- Regras de segurança

---

## Característica importante
Por padrão:
- Tudo é **bloqueado**
- Nada entra ou sai sem configuração

Isso garante segurança desde o início.

---

## Visão simples
- EC2 roda dentro da VPC
- A VPC controla comunicação interna e externa
