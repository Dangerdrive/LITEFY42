# LITEFY

Let It Theme Evince For You.

If you are not sudo user, you may experience troubles with Document Viewer (Evince) when you try apply a user-installed the theme. This script will help you to "change"/"fix" the theme of Evince creating a script that applies a root theme, and setting it as default application for .pdf files.

## Usage

Just run the command below in your terminal:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Dangerdrive/litefy/main/litefy.sh)"
```

## Exemplo de uso

```bash
Tema GTK atual: 'Graphite-Dark-nord'.  

Temas disponíveis (/usr/share/themes:) 
"Adwaita
Adwaita-dark
Default
Emacs
HighContrast
Raleigh
Yaru
Yaru-dark"

Escolha o tema desejado ou pressione enter para aplicar o padrão (Adwaita-dark)


O tema "Adwaita-dark" será "aplicado" para o Document Viewer.



(- Script evince.desktop foi criado em ~/.local/share/applications/
- evince.desktop já é o leitor padrão de .pdf
- Permissões do arquivo evince.desktop foram redefinidas.)

Tudo Pronto! =')'

```