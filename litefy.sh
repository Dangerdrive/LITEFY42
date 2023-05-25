#!/bin/bash

# Create a script that sets the theme for evince (Document Viewer)

# Vamos criar um script que abrirá o Document Viewer com um tema aplicado (evince.desktop).
# Depois vamos colocar esse script como o leitor padrão de pdf modificando o mimeapp.list.

# Escolha um dos temas que já vem instalados nos PCs da 42SP para funcionar.


# Define the GTK theme variable to be applied
gtk_theme="Adwaita-dark"

# Retrieve the current GTK theme
current_theme=$(gsettings get org.gnome.desktop.interface gtk-theme)

echo -e "------------------------------------------------\n\n"
echo -e "Tema GTK atual:\e[1m\e[32m $current_theme. \e[0m \n"

echo -e "O tema\e[1m\e[32m \"$gtk_theme\" \e[0mserá \"aplicado\" para o Document Viewer.\n"
echo -e "Se quiser aplicar outro tema, modifique a variável \"gtk_theme\" deste script.\n"

# Themes are available at /usr/share/themes.
# Os temas disponíveis contidos em /usr/share/themes são:
available_themes="/usr/share/themes"

# Check if the directory exists
if [ -d "$available_themes" ]; then
    # List the folder names
    echo -e "Temas disponíveis \e[90m(/usr/share/themes:) \e[1m\e[32m"
    ls -1 "$available_themes"
else
    echo "\e[0mDiretório não encontrado: $available_themes"
fi

# Define the application to apply the theme
application="evince"

# Define the desktop file content
desktop_file="[Desktop Entry]
Version=1.0
Name=Evince
GenericName=Visualizador de Documentos
Comment=Visualize arquivos PDF e outros formatos de documentos
Exec=env GTK_THEME=\"$gtk_theme\" evince %U
Terminal=false
Icon=evince
Type=Application
Categories=Escritório;Visualizador;
MimeType=application/pdf;application/x-bzpdf;application/x-gzpdf;application/x-xzpdf;application/x-dvi;application/x-bzdvi;application/x-gzdvi;application/x-texinfo;application/x-bibtex;application/x-lyx;application/x-cbr;application/x-cbz;application/x-cb7;application/vnd.comicbook+zip;application/x-rar;application/x-tar;application/x-7z-compressed;application/x-zip-compressed;application/zip;application/x-zip;application/x-zip-compressed-tar;application/x-compressed-tar;application/x-bzip-compressed-tar;application/x-gzip-compressed-tar;application/vnd.ms-powerpoint;application/vnd.openxmlformats-officedocument.presentationml.presentation;application/vnd.ms-excel;application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;application/vnd.ms-word;application/vnd.openxmlformats-officedocument.wordprocessingml.document;application/vnd.oasis.opendocument.text;application/vnd.oasis.opendocument.spreadsheet;application/vnd.oasis.opendocument.presentation;application/vnd.oasis.opendocument.graphics;application/vnd.oasis.opendocument.chart;application/vnd.oasis.opendocument.formula;application/vnd.oasis.opendocument.database;application/vnd.oasis.opendocument.image;application/vnd.ms-xpsdocument;application/x-pkcs7-signature;application/vnd.google-apps.document;application/vnd.google-apps.spreadsheet;application/vnd.google-apps.presentation;application/vnd.google-apps.drawing;application/vnd.google-apps.script;application/x-deb;"

# Define the desktop file path
desktop_file_path="$HOME/.local/share/applications/evince.desktop"

# Create the directory if it doesn't exist
mkdir -p "$HOME/.local/share/applications"

# Create the desktop file
echo "$desktop_file" > "$desktop_file_path"

# Set permissions for the desktop file
chmod +x "$desktop_file_path"

echo -e "\n\e[0mArquivo evince.desktop foi criado em ~/.local/share/applications/"

# Change the default application to open PDF files with evince.desktop
# Define the file path
file_path="$HOME/.config/mimeapps.list"

# Check if the file exists
if [ -f "$file_path" ]; then
    # Add the line to the file if it doesn't already exist
    if ! grep -q "application/pdf=evince.desktop" "$file_path"; then
        echo "application/pdf=evince.desktop" >> "$file_path"
        echo "Associação adicionada: application/pdf -> evince.desktop"
    else
        echo "Associação já existe: application/pdf -> evince.desktop"
    fi
else
    echo "Arquivo mimeapps.list não encontrado: $file_path"
fi

# Set permissions for the evince.desktop file
chmod +x "$desktop_file_path"

echo "Permissões do arquivo evince.desktop foram redefinidas."

echo -e "\n\n------------------------------------------------\n"
