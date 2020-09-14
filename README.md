# TesteDasa

1 - Instale o Ruby no Windows

baixe em: ​http://rubyinstaller.org/downloads/​.
Executar o arquivo baixado e seguir as instruções clicando em ‘next’

2 - Instalando o Bundler
No prompt de comando digite:
gem install bundler

3 - Instalando ChromeDriver
Baixe em: ​https://chromedriver.storage.googleapis.com/index.html?path=2.33/
Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin

4 - Instalando Geckodriver
Baixe em: https://github.com/mozilla/geckodriver/releases/download/v0.19.1/geckodriver-v0.19.1-win64.zip
Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin

Rodando a Automação:

1 - Faça o clone do projeto

2 - Instale as dependencias do projeto com o comando:
bundle install

3 - Para rodar a automação digite o comando:
cucumber 
Obs: Para escolher o navegador comentar/descomentar no arquivo `features/support/hooks.rb` a linha referente ao Firefox ou Chrome
