Flatpak packaging for Bitwig Studio
===================================

This is an attempt at packaging Bitwig Studio using Flatpak for Linux.

Instructions
============

* Install flatpak and flatpak-builder.
* make run

Known Issues
============

- Jack not working
- ffmpeg not working
- missing icons in open file dialog
- Problem exporting mime file type icons:

Exporting share/applications/com.bitwig.BitwigStudio.desktop
Exporting share/mime/packages/com.bitwig.BitwigStudio.xml
Exporting share/icons/hicolor/48x48/apps/com.bitwig.BitwigStudio.png
Not exporting share/icons/hicolor/scalable/mimetypes/application-bitwig-project.svg, non-allowed export filename
Not exporting share/icons/hicolor/scalable/mimetypes/application-bitwig-project-folder.svg, non-allowed export filename
Not exporting share/icons/hicolor/scalable/mimetypes/application-bitwig-device.svg, non-allowed export filename
Not exporting share/icons/hicolor/scalable/mimetypes/application-bitwig-preset.svg, non-allowed export filename
Not exporting share/icons/hicolor/scalable/mimetypes/application-bitwig-clip.svg, non-allowed export filename
Exporting share/icons/hicolor/scalable/apps/com.bitwig.BitwigStudio.svg
Please review the exported files and the metadata


