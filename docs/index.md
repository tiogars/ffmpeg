# Présentation

ffmpeg est un outil en ligne de commande permettant de convertir, d'enregistrer, d'éditer et de diffuser des fichiers audio et vidéo. Il prend en charge de nombreux formats et codecs.

## But

La commande `ffmpeg` sert principalement à manipuler des fichiers multimédias : conversion entre formats, extraction de pistes audio/vidéo, compression, redimensionnement, ajout de filtres, etc.

## Fonctionnement

La syntaxe générale est :
```
ffmpeg [options] -i <entrée> [options] <sortie>
```
- `-i <entrée>` : spécifie le fichier ou le flux d'entrée.
- `<sortie>` : définit le fichier ou le flux de sortie.

## Options principales

- `-c:v <codec>` : définit le codec vidéo (ex : `libx264`, `libvpx`).
- `-c:a <codec>` : définit le codec audio (ex : `aac`, `mp3`).
- `-b:v <bitrate>` : définit le débit vidéo (ex : `1000k`).
- `-b:a <bitrate>` : définit le débit audio.
- `-vf <filtres>` : applique des filtres vidéo (ex : `scale=1280:720`).
- `-af <filtres>` : applique des filtres audio.
- `-ss <temps>` : démarre à un temps précis (ex : `00:01:00`).
- `-t <durée>` : définit la durée de la sortie.
- `-map <pistes>` : sélectionne les pistes à inclure.

## Exemple

Convertir une vidéo en MP4 avec codec H.264 :
```
ffmpeg -i input.avi -c:v libx264 -c:a aac output.mp4
```

Pour plus d'options, consultez la documentation officielle : https://ffmpeg.org/documentation.html
