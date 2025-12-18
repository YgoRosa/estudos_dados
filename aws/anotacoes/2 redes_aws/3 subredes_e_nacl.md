# Sub-redes e Listas de Controle de Acesso (NACL)

## O que são sub-redes
Sub-redes são **divisões da VPC**.

Elas organizam os recursos e ajudam no controle de acesso.

---

## Para que servem
- Separar ambientes
- Controlar acesso
- Aumentar segurança

---

## Tipos de sub-redes

### Sub-rede pública
- Tem rota para a internet
- Recursos podem acessar a internet

---

### Sub-rede privada
- Não tem acesso direto à internet
- Usada para bancos e sistemas internos

---

## O que é NACL (Network ACL)
NACL é uma **lista de regras de tráfego** aplicada às sub-redes.

---

## Características do NACL
- Atua no nível da sub-rede
- Permite ou bloqueia tráfego
- Avalia regras em ordem
- Pode permitir e negar explicitamente

---

## Diferença importante
- **NACL**: controla tráfego da sub-rede
- **Security Group**: controla tráfego do recurso (EC2)

---

## visão simples
As sub-redes são como **quadras dentro do bairro**.
Cada quadra pode ter regras diferentes.

O NACL é o **guarda da quadra**:
- Ele olha quem entra
- Olha quem sai
- Pode barrar na hora

Ele não conhece as pessoas, só segue regras.