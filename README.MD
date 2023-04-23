 # Terraform CI_CD Github Actions

![file_type_terraform_icon_130125(2)](https://user-images.githubusercontent.com/116848225/232304153-a758ecdc-abe0-49eb-a75f-76f4038a321f.png)![amazon_aws_logo_icon_145507](https://user-images.githubusercontent.com/116848225/232304851-58f2a879-0a08-412b-9828-c10f31bab7ba.png)
![microsoft_azure_logo_icon_168977](https://user-images.githubusercontent.com/116848225/232304872-3fd9d9c7-c054-4e2c-a7eb-50df38d9064d.png)
![file_type_vscode_icon_130084](https://user-images.githubusercontent.com/116848225/232304889-b038a60b-6db3-4d73-863f-d06fa2385d92.png)
![github_original_wordmark_logo_icon_146506](https://user-images.githubusercontent.com/116848225/232304921-df855855-7575-455d-af7c-cae1ab46d8b9.png)

## Descrição
Este é um projeto de exemplo que demonstra como criar um pipeline CI/CD para o Terraform usando o GitHub Actions na AWS e Azure.

## Como funciona
O pipeline é desencadeado a cada push no branch principal do repositório. Ele consiste em três jobs que são executados em sequência:

> Terraform Plan: Este job inicializa o Terraform, valida a configuração e executa o plano de infraestrutura.

> Terraform Apply: Este job é manual e pode ser desencadeado a partir da interface do GitHub Actions. Ele inicializa o Terraform e aplica as alterações definidas no plano de infraestrutura.

> Terraform Destroy: Este job é manual e pode ser desencadeado a partir da interface do GitHub Actions. Ele inicializa o Terraform e destrói a infraestrutura criada anteriormente.

Os jobs são executados em uma máquina virtual com Ubuntu. O pipeline usa variáveis de ambiente definidas em um arquivo terraform-cicd.yml para autenticar-se nas contas da AWS e Azure.

## Pré-requisitos
Antes de executar o pipeline, é necessário criar uma conta na AWS e Azure e configurar as chaves de acesso no GitHub Secrets. Além disso, é necessário instalar o Terraform e as dependências necessárias no ambiente de execução do pipeline.

## Como executar

Para executar o pipeline, faça o seguinte:

>   Crie uma conta na AWS e Azure e configure as chaves de acesso no GitHub Secrets.

>   Clone este repositório em sua máquina local.

>   Instale o Terraform e as dependências necessárias no ambiente de execução do pipeline.

>   Faça push das alterações no branch principal do repositório. O pipeline será desencadeado automaticamente.

>   Caso queira fazer alguma alteração no plano da infraestrutura, execute o job terraform Plan manualmente a partir da interface do GitHub Actions.

>   Para aplicar as alterações definidas no plano de infraestrutura, execute o job Terraform Apply manualmente a partir da interface do GitHub Actions.

>   Para destruir a infraestrutura criada, execute o job Terraform Destroy manualmente a partir da interface do GitHub Actions.

## Contribuição

Sinta-se à vontade para contribuir com o projeto, fazendo um fork e enviando um pull request.