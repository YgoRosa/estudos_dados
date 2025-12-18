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
Pense na VPC como um **terreno murado** que você alugou.
Tudo que você coloca lá dentro é seu, mas **ninguém entra e ninguém sai** sem você autorizar.

Você decide:
- Onde ficam as entradas
- Quem pode circular
- O que pode sair para a rua (internet)

A VPC é a base de toda a rede na AWS.