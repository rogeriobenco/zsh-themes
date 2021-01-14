# ZSH-THEMES

### Repositório para armazenamento de temas para o terminal bash ZSH

## Instruções

Os temas requerem a extensão [ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) instalada.

Após a instalação e configuração do ZSH clone o projeto.
```sh
git clone https://github.com/rogeriobenco/zsg-themes.git
```
Copie o arquivo ***<file>.zsh-theme*** de dentro da pasta com o tema desejado e cole no diretório ***/themes***, geralmente localizado em: ```~/.oh-my-zsh/themes```

Edite o arquivo ***~/.zshrc***
```sh
vim ~/.zshrc
```
alterando a variável ***ZSH_THEME*** com o nome do tema escolhido, ficando como abaixo:
```javascript
ZSH_THEME="<nome_do_tema>"
```
Salve e feche o arquivo ***~/.zshrc*** e recarregue o seu terminal fechando-o e abrindo-o novamente.
Você também pode executar o comando:
```sh
$ source ~/.zshrc
```
