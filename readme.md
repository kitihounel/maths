# maths
Projet de vulgarisation des mathématiques

## Prérequis
Pour compiler les slides il vous faudra une distribution LaTeX fonctionnelle.

Le thème utilisé pour les slides s'appelle Metropolis et est disponible
[ici](https://github.com/matze/mtheme). Il peut également être installé grâce
au paquet `texlive-latex-extra`.

## Conversion des fichiers PDF en PNG
Le script `splitpdf.sh` sert à générer des images pour chaque page
d'une présentation. Il prend deux arguments. Le fichier PDF pour lequel
vous voulez générer les images et le repertoire dans lequel seront placées
les images générées.

```
$ ./splitpdf fichier.pdf dossier
```

## Conversion des fichiers PDF en GIF
Le script `pdftogif.sh` est utilisé à cet effet. Il prend en argument le
fichier PDF à convertir en GIF et le nom à donner au fichier GIF géneré.
Le script contient juste la commande suivante.

```
convert -verbose -delay 1000 -loop 0 -density 300 fichier.pdf image.gif
```

Sous les distributions Linux, il y a des restrictions par défaut sur le programme
ImageMagick qui empêcheront le script de fonctionner. La procédure pour retirer
ces restrictions est donnée dans cette [discussion](https://askubuntu.com/questions/1081895)
sur AskUbuntu. La procédure consiste à exécuter les commandes suivantes.

```
cd /etc/ImageMagick-6/
sudo mv ./policy.xml policy.xml.disabled
```

**Attention** : il est indiqué dans la discussion de ne pas faire cette
manipulation si vous utilisez un serveur accessible depuis Internet.
