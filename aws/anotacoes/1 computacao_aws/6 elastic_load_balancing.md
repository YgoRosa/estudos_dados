## Elastic Load Balancing (ELB)

Serviço da AWS responsável por **distribuir tráfego** entre múltiplos recursos (EC2, containers, IPs), evitando sobrecarga e aumentando a disponibilidade da aplicação.

### Para que serve
- Distribuir requisições entre vários servidores
- Aumentar disponibilidade
- Melhorar performance
- Trabalhar integrado com Auto Scaling

### Como funciona
Fluxo básico:
Usuário → ELB → Instâncias saudáveis

Instâncias que falham nos testes de saúde deixam de receber tráfego automaticamente.

### Conceitos importantes
- **Listener**: porta e protocolo (ex: HTTP 80)
- **Target Group**: grupo de instâncias que recebem tráfego
- **Health Check**: verifica se a instância está saudável
- **Alta disponibilidade**: opera em múltiplas AZs automaticamente

---

## ELB + Auto Scaling (combo)

- ELB distribui o tráfego
- Auto Scaling cria e remove instâncias automaticamente
- Sistema fica escalável, resiliente e altamente disponível

### Uso típico
- Aplicações web
- APIs
- Sistemas com carga variável
