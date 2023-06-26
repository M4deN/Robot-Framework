# Robot Framework

Este repositório contém scripts de automação de formulários usando a biblioteca Robot Framework em conjunto com a biblioteca SeleniumLibrary. Os scripts são escritos em formato de arquivo `.robot` e podem ser executados para preencher campos e interagir com formulários em diferentes sites.

## Pré-requisitos
Certifique-se de ter as seguintes ferramentas instaladas:

- Python: https://www.python.org/downloads/
- Robot Framework: https://robotframework.org/
- SeleniumLibrary: https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

Além disso, é necessário ter um navegador web instalado, como o Google Chrome.

## Configuração do ambiente
Antes de executar os scripts de automação, é necessário realizar a configuração do ambiente. Siga os passos abaixo:

1. Instale o Python de acordo com as instruções do site oficial.
2. Instale o Robot Framework executando o seguinte comando no terminal:
   ```
   pip install robotframework
   ```
3. Instale a biblioteca SeleniumLibrary executando o seguinte comando no terminal:
   ```
   pip install robotframework-seleniumlibrary
   ```
4. Certifique-se de ter o navegador web Chrome instalado.

## Executando os testes
Para executar os testes de automação de formulários, siga os passos abaixo:

1. Faça o clone deste repositório para o seu ambiente local.
2. Navegue até o diretório raiz do repositório.
3. Abra um terminal ou prompt de comando no diretório raiz.
4. Execute o seguinte comando para executar os testes:
   ```
   robot Archive.robot
   ```

Certifique-se de substituir "Archive.robot" pelo nome do arquivo de script que deseja executar.

## Descrição dos Scripts

### Script 1: Preencher Formulário
Este script acessa o site "https://itera-qa.azurewebsites.net/home/automation" e preenche o formulário com os seguintes dados:
- Nome: Arya Stark
- Telefone: 555-1234
- Email: arya.stark@winterfell.com
- Senha: 123456
- Endereço: Rua Winterfell 13 B em robot

### Script 2: Preencher Formulário2
Este script acessa o site "https://demoqa.com/automation-practice-form" e preenche o formulário com os seguintes dados:
- Nome: Arya
- Sobrenome: Stark
- Email: arya.stark@winterfell.com
- Telefone: 555-1234

### Script 3: Marcar Campos do Formulário
Este script acessa o site "https://itera-qa.azurewebsites.net/home/automation" e marca os campos destacados no formulário:
- Opção de rádio: option1
- Checkbox "Monday"
- Checkbox "Friday"
- Checkbox "Sunday"

### Script 4: Cadastro no Facebook
Este script acessa o site "https://www.facebook.com/" e realiza o cadastro preenchendo o formulário com os seguintes dados:
- Nome: Arya
- Sobrenome: Stark
- Email: arya@gmail.com
- Senha: @gggadssd12345ss
- Data de nascimento: 13 de janeiro de 2013

## Observações
- Certifique-se de ter uma conexão com a internet para que os scripts possam acessar os sites.
- Verifique se os locators (IDs, classes, etc.) dos elementos do formulário estão atualizados nos scripts. Caso contrário, os testes podem falhar.
- Os scripts foram desenvolvidos com base nas informações fornecidas e podem precisar de ajustes dependendo das atualizações dos sites e das bibliotecas utilizadas.
- Caso ocorra algum problema durante a execução dos scripts, verifique as configurações do ambiente e certifique-se de seguir corretamente as instruções de execução.