# Preparando o Computador para o VSSS
O seguinte tutorial é para configurar o ambiente de trabalho padrão da categoria vsss

Tecnologias usadas:
 - Ubuntu 22.04
 - Docker Engine
 - [FiraSim](https://github.com/VSSSLeague/FIRASim)
 - [VSSReferee](https://github.com/VSSSLeague/VSSReferee)

# Instalação com Docker

## Instalar Docker Engine
Para mais informação [Documentação Oficial Docker](https://docs.docker.com/engine/install/ubuntu/)

### Configurar Repositorio Docker
```bat
sudo apt-get update
```

```bat
sudo apt-get install \
    ca-certificates \ 
    curl \
    gnupg \
    lsb-release
```

```bat
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

```bat
echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

### Instalar Docker Engine

```bat
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

Para verificar se a instalação do Docker Engine foi completa

```bat
sudo service docker start
sudo docker run hello-world
```

Resposta esperada:

```bat
Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

```
## Instalando FiraSim e VSSReferee via Docker

Clonando repositório 

```bat
git clone https://github.com/vsssfbot/fbot_vss_docker.git
cd fbot_vss_docker
```

Montando o container

```bat
./dockerbuild.sh
```

Executando o container

```bat
./rundocker.sh
```

---

# Instalação por terminal

## Instalando Dependencias

Abra um novo terminal 

```bat
sudo apt-get install qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools
sudo apt-get install -y build-essential g++ cmake git libqt5opengl5-dev libgl1-mesa-dev libglu1-mesa-dev libprotobuf-dev protobuf-compiler libode-dev libboost-dev
```

Instalando Vartypes

```bat
sudo apt-get clean
cd /tmp
git clone https://github.com/jpfeltracco/vartypes.git
cd vartypes
mkdir build
cd build
cmake ..
make 
sudo make install
```
## Instalando FiraSim e VSSRefere

Criando workspace

```bat
sudo
mkdir /vsss_ws
```

Instalando FiraSim

```bat
cd /vsss_ws
git clone https://github.com/VSSSLeague/FIRASim.git
cd FIRASim
mkdir build
cd build
cmake ..
make
```

Instalando VSSRefere
```bat
cd /vsss_ws
git clone https://github.com/VSSSLeague/VSSReferee.git
cd VSSReferee

mkdir build
cd build
qmake .. 
make
```

Rodando o FiraSim
```bat
./vsss_ws/FIRASim/bin/FIRASim
```