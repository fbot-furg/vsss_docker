# Preparando o Computador para o VSSS
O seguinte tutorial é para configurar o ambiente de trabalho padrão da categoria vsss

Tecnologias usadas:
 - Ubuntu 22.04
 - Docker Engine
 - [FiraSim](https://github.com/VSSSLeague/FIRASim)
 - [VSSReferee](https://github.com/VSSSLeague/VSSReferee)
 - [SSL-VISION](https://github.com/RoboCup-SSL/ssl-vision)

## Instalação Docker
Tutorial com a instalação do Docker para ubuntu [aqui](https://docs.docker.com/engine/install/ubuntu/)

## Preparando o ambiente

Esses passos são opicionais se o diretório `~/vsss_ws` ainda não foi criado no seu pc. Para verificar é possivel rodar o seguinte comando

```bat
cd ~/vss_ws
```

Se o diretório não existir, use esses comando para criar ele
```bat
cd ~/
mkdir vsss_ws
cd vsss_ws
```

## Clonando esse repositório
```bat
git clone https://github.com/fbot-furg/vsss_docker.git
cd vss_docker
```

## Buildando Imagens do Docker
As imagens precisam ser buildadas apenas uma única vez.
Essa etapa apenas deve ser repetida quando houver alguma alteração nos Dockerfile precisa ser feita alguma alteração no `constants.json`

Imagem do FIRASim e do Referee
```bat
sudo sh buildFira.sh
```

Imagem do ssl-vision e do Referee
```bat
sudo sh build.sh
```

## Executando os Containers

Rodando o Fira junto com o Referee
```bash
sudo sh runFira.sh
```
Rodando o ssl-vision com o Referee
```bash
sudo sh run.sh
