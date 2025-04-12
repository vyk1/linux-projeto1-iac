# Provisionamento de Infraestrutura de Usuários e Diretórios

Este repositório contém um script em Bash para provisionamento automático de infraestrutura de usuários, grupos, diretórios e permissões em ambientes Linux.

## 🧾 Objetivo
Automatizar a configuração inicial de uma nova máquina virtual, garantindo que grupos de usuários, contas, diretórios e permissões estejam devidamente criados com base em categorias temáticas.

## 🛠️ Funcionalidades
- Criação de grupos:
  - `GRP_ADM` (Administração)
  - `GRP_PESQ` (Pesquisa)
  - `GRP_COM` (Comunidade)

- Criação de usuários com nomes de figuras históricas e senha padrão:
  - `carlos`, `ruth` (GRP_ADM)
  - `darcyleite`, `elza` (GRP_PESQ)
  - `abdias`, `lia` (GRP_COM)

- Diretórios específicos para cada grupo:
  - `/dados/adm`
  - `/dados/pesquisa`
  - `/dados/comunidade`

- Permissões ajustadas:
  - Acesso exclusivo ao grupo
  - Proibição de acesso a outros usuários

- Registro de log em `/var/log/setup_infra.log`

## 👥 Referência dos nomes utilizados
| Nome de usuário | Grupo         | Referência histórica                        |
|------------------|----------------|---------------------------------------------|
| `carlos`         | GRP_ADM       | Carlos Chagas — médico e cientista brasileiro
| `ruth`           | GRP_ADM       | Ruth Rocha — escritora e educadora
| `darcyleite`     | GRP_PESQ      | Darcy Ribeiro — antropólogo e educador
| `elza`           | GRP_PESQ      | Elza Berquó — demógrafa e pesquisadora
| `abdias`         | GRP_COM       | Abdias Nascimento — ativista e político
| `lia`            | GRP_COM       | Lia Diskin — filósofa, educadora e pacifista

## 🔐 Senhas utilizadas (exemplo)
- GRP_ADM: `Senha123`
- GRP_PESQ: `Senha456`
- GRP_COM: `Senha789`

> As senhas são criptografadas no momento da criação com `openssl passwd -crypt`.

## ▶️ Execução

1. Clone o repositório:
```bash
git clone https://github.com/seu-usuario/setup-infra-usuarios.git
cd setup-infra-usuarios
```

2. Dê permissão de execução ao script:
```bash
chmod +x setup_infra.sh
```

3. Execute como root:
```bash
sudo ./setup_infra.sh
```

## 📦 Requisitos
- Distribuição Linux compatível (testado em Ubuntu 20.04+)
- Pacote `openssl` instalado

## 📄 Licença
Este projeto está licenciado sob a licença MIT. Sinta-se livre para modificar, adaptar e reutilizar o script conforme suas necessidades.

