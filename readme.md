# maths
Projet de vulgarisation des mathématiques

## Prérequis
Pour compiler les slides il vous faudra une distribution LaTeX fonctionnelle.

Le thème utilisé pour les slides est Metropolis disponible
[ici](https://github.com/matze/mtheme). Il peut également être installé grâce
au paquet `texlive-latex-extra`.

## Conversion des fichiers PDF en GIF
Le script `pdftogif.sh` est utilisé à cet effet. Il contient juste la commande
suivante.

```
convert -verbose -delay 1000 -loop 0 -density 300 file.pdf file.gif
```

Sous les distributions Linux, il y a des restrictions par défaut sur le programme
ImageMagick qui empêcheront le script de fonctionner. La procédure pour retirer
ces restrictions est donnée dans cette [discussion](https://askubuntu.com/questions/1081895)
sur AskUbuntu. La procédure consiste à exécuter les commandes suivantes.

```
cd /etc/ImageMagick-6/
sudo mv ./policy.xml policy.xml.disabled
```

*Attention* : il est indiqué dans la discussion de ne pas faire cette
manipulation si vous utilisez un serveur accessible depuis Internet.
