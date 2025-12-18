# Conectividade na AWS

## O que é conectividade
Conectividade é como os recursos dentro da VPC **se comunicam entre si** e com a internet.

---

## Tipos de conectividade

### Comunicação interna
- EC2 ↔ EC2
- EC2 ↔ Banco
- Serviços dentro da mesma VPC

Ocorre automaticamente se permitido pelas regras.

---

### Comunicação com a internet
Para acessar a internet ou ser acessado por ela, é necessário configurar serviços específicos.

---

## Principais componentes

### Internet Gateway (IGW)
- Permite acesso à internet
- Anexado à VPC
- Sem ele, a VPC fica isolada

---

### Route Table
Define **para onde o tráfego vai**.

Exemplo:
- Tráfego interno → VPC
- Tráfego externo → Internet Gateway

---

## Conceito importante
A conectividade só funciona se:
- Rota estiver correta
- Regras de segurança permitirem

Um sem o outro não funciona.

---

## Visão simples
- IGW conecta a VPC à internet
- Route Table decide o caminho do tráfego
