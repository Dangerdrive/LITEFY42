# LITEFY

Let It Theme Evince For You.

If you are not sudo user, you may experience troubles with Document Viewer (Evince) when you try to change the theme. This script will help you to change the theme of Evince for a theme.

## Usage

Just run it:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Dangerdrive/litefy/main/litefy.sh)"
```

## Exemplo de uso

```bash
Tema GTK atual: 'Graphite-Dark-nord'.  

O tema "Adwaita-dark" será "aplicado" para o Document Viewer.

Se quiser aplicar outro tema, modifique a variável "gtk_theme" deste script.

Temas disponíveis (/usr/share/themes:) 
Adwaita
Adwaita-dark
Default
Emacs
HighContrast
Raleigh
Yaru
Yaru-dark

Arquivo evince.desktop foi criado em ~/.local/share/applications/
Associação já existe: application/pdf -> evince.desktop
Permissões do arquivo evince.desktop foram redefinidas.
```

## Setting another theme

As default, LITEFY will set Adwaita-dark theme for Document Viewer. 

```bash

```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)

<!-- bash -c "$(curl -fsSL https://raw.github.com/Dangerdrive/litefy/master/litify.sh)

https://rawgithub.com/Dangerdrive/litefy/blob/main/litefy.sh -->