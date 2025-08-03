REM Cette commande utilise ffmpeg pour extraire chaque image d'une vidéo et les enregistrer sous forme de fichiers JPEG numérotés.

REM Détail des options :
REM -i "video.mov" : spécifie le fichier vidéo source.
REM -f image2 : indique que la sortie sera une séquence d'images.
REM -frame_pts true : nomme chaque image selon son timestamp (point temporel) dans la vidéo.
REM "%%d.jpg" : définit le nom des fichiers de sortie, où %%d sera remplacé par le numéro ou le timestamp de chaque image extraite.

ffmpeg -i "video.mov" -f image2 -frame_pts true "%%d.jpg"
