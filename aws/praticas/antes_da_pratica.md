# Antes de começar a prática em AWS

Este arquivo é um **lembrete rápido** do que eu preciso ter em mente antes de partir para a prática em AWS.
A ideia é **não travar**, não se perder em erro bobo e lembrar do básico enquanto executo.

---

## Mentalidade certa

Aprender AWS é como aprender a dirigir:
- Você **vai errar**
- Vai desligar o carro
- Vai pegar caminho errado

Isso faz parte.
Quem aprende é quem **continua tentando**, não quem evita errar.

---

## Segurança (IAM)

Pense no IAM como **chaves da casa**.

- A conta root é o **dono da casa**
- Usuário IAM é quem mora lá
- Permissões dizem **quais portas você pode abrir**

Se você não tem permissão:
- A porta simplesmente **não abre**

Na prática:
- Não usar root
- Criar usuário IAM
- Dar só as permissões necessárias

---

## Rede 

Imagine a AWS como um **bairro**.

- **VPC** é o bairro
- **Sub-rede** é a rua
- **Internet Gateway** é o portão do bairro
- **Route Table** é o mapa dizendo por onde os carros podem ir
- **Security Group** é o porteiro do prédio

Se qualquer um desses faltar:
- O carro não chega
- O acesso não funciona
- A EC2 fica isolada

---

## EC2

EC2 é só um **computador ligado longe**.

- Ele roda Linux
- Fica ligado 24h
- Você entra nele pela internet

Para entrar:
- Precisa da chave (Key Pair)
- Precisa da porta aberta (22)
- Precisa de IP público

Se não entrar:
- Algo na rede ou segurança está bloqueando

---

## S3

S3 é um **HD na nuvem**.

- Bucket é a pasta principal
- Arquivo é só um arquivo
- Você pode jogar arquivo lá dentro
- Pode pegar depois

Tudo no S3 depende de permissão.
Sem permissão, você vê erro.

---

## CloudWatch

CloudWatch é o **painel do carro**.

- Mostra o que está acontecendo
- Mostra erro
- Mostra log

Quando algo dá errado:
- Olha o CloudWatch primeiro

---

## Lambda

Lambda é um **robô que executa uma tarefa**.

- Você não liga servidor
- Só manda o que ele tem que fazer
- Ele executa e vai embora

Serve pra:
- tarefas pequenas
- coisas automáticas

---

## boto3

boto3 é o **controle remoto da AWS**.

- Você aperta um botão
- A AWS faz algo
- Se não tiver permissão, dá erro

Use boto3 sem medo.
Ele só executa o que você mandar.

---

## Regra de ouro

Se algo não funcionar:
1. Verifique permissão
2. Verifique rede
3. Leia o erro
4. Tente de novo

AWS não é decorar.
AWS é **entender o fluxo**.

Esse arquivo existe para lembrar disso.