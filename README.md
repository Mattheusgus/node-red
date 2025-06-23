# Backend Node-RED (Docker)

---

## Português (PT-BR)

Este repositório contém o backend Node-RED, empacotado como uma imagem Docker, que serve como API para os frontends ConsultaCEP e Brokers.

### Visão Geral

Este Node-RED é o coração da comunicação para ambos os frontends desenvolvidos em React. Ele foi configurado para expor as APIs necessárias para as funcionalidades de cada frontend, consumindo dados de APIs externas como o BrasilAPI.

### Tecnologias Utilizadas

* **Node-RED:** Plataforma de programação visual para conectar dispositivos de hardware, APIs e serviços online.
* **Docker:** Para empacotar e isolar o ambiente do Node-RED, facilitando o deploy e a portabilidade.
* **Railway:** Plataforma de deploy que utiliza o Docker para hospedar este backend.

### Como Rodar o Projeto Localmente (Docker)

Para rodar este backend Node-RED localmente usando Docker, siga os passos abaixo:

1.  **Certifique-se de ter o Docker instalado:**
    Se você não tem o Docker instalado, siga as instruções oficiais para o seu sistema operacional: [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/)

2.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/Mattheusgus/node-red.git](https://github.com/Mattheusgus/node-red.git)
    # Substitua 'node-red' pela URL real do seu repositório Node-RED, caso seja diferente.
    ```
3.  **Navegue até o diretório do projeto:**
    ```bash
    cd node-red
    ```
4.  **Construa a imagem Docker:**
    ```bash
    docker build -t meu-node-red .
    ```
    Este comando construirá uma imagem Docker com o nome `meu-node-red` a partir do seu `Dockerfile` (assumindo que você tem um `Dockerfile` na raiz do seu repositório).

5.  **Execute o contêiner Docker:**
    ```bash
    docker run -p 1880:1880 meu-node-red
    ```
    Este comando irá iniciar um contêiner do Node-RED e mapear a porta `1880` do contêiner para a porta `1880` da sua máquina local. Você poderá acessar a interface do Node-RED em `http://localhost:1880`.


### Configuração do Backend (CORS)

É crucial que o Node-RED esteja configurado para permitir requisições dos seus frontends. Se os frontends estão hospedados em domínios diferentes (como no Vercel), você precisará configurar o **CORS (Cross-Origin Resource Sharing)** no Node-RED para permitir requisições dos domínios do Vercel. Isso geralmente é feito através de configurações no arquivo `settings.js` do Node-RED ou via middleware HTTP.

### Deploy

Este backend Node-RED está em deploy no Railway. O Railway automaticamente constrói e executa o contêiner Docker a partir deste repositório. Você pode acessar a URL da sua instância Node-RED [aqui](https://node-red-production-cc3e.up.railway.app/#flow/a241df78822df212).

### Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

### Licença

Este projeto está licenciado sob a [Licença MIT](https://opensource.org/licenses/MIT).

---

## English (EN)

This repository contains the Node-RED backend, packaged as a Docker image, which serves as the API for both the ConsultaCEP and Brokers frontends.

### Overview

This Node-RED instance is the communication hub for both React frontends. It has been configured to expose the necessary APIs for each frontend's functionalities, consuming data from external APIs like BrasilAPI.

### Technologies Used

* **Node-RED:** A visual programming platform for connecting hardware devices, APIs, and online services.
* **Docker:** Used to package and isolate the Node-RED environment, facilitating deployment and portability.
* **Railway:** The deployment platform that uses Docker to host this backend.

### How to Run the Project Locally (Docker)

To run this Node-RED backend locally using Docker, follow these steps:

1.  **Ensure Docker is installed:**
    If you don't have Docker installed, follow the official instructions for your operating system: [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/)

2.  **Clone the repository:**
    ```bash
    git clone [https://github.com/Mattheusgus/node-red.git](https://github.com/Mattheusgus/node-red.git)
    # Replace 'node-red' with the actual URL of your Node-RED repository, if different.
    ```
3.  **Navigate to the project directory:**
    ```bash
    cd node-red
    ```
4.  **Build the Docker image:**
    ```bash
    docker build -t my-node-red .
    ```
    This command will build a Docker image named `my-node-red` from your `Dockerfile` (assuming you have a `Dockerfile` in the root of your repository).

5.  **Run the Docker container:**
    ```bash
    docker run -p 1880:1880 my-node-red
    ```
    This command will start a Node-RED container and map port `1880` of the container to port `1880` of your local machine. You can access the Node-RED interface at `http://localhost:1880`.


### Backend Configuration (CORS)

It is crucial that Node-RED is configured to allow requests from your frontends. If the frontends are hosted on different domains (like on Vercel), you will need to configure **CORS (Cross-Origin Resource Sharing)** in Node-RED to permit requests from the Vercel domains. This is usually done through configurations in Node-RED's `settings.js` file or via HTTP middleware.

### Deployment

This Node-RED backend is deployed on Railway. Railway automatically builds and runs the Docker container from this repository. You can access the URL of your Node-RED instance [here](https://node-red-production-cc3e.up.railway.app/#flow/a241df78822df212).

### Contribution

Contributions are welcome! Feel free to open issues or submit pull requests.

### License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
