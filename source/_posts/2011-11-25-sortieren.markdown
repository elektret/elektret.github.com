---
layout: post
title: "Sortieren"
date: 2011-11-25 22:54
comments: true
categories: 
---
<p>Sortieren ist toll und der Unix-Befehl <em>sort</em> ist auch toll.
Hier sind mal ein paar Beispiele für die Verwendung von <em>sort</em>.</p>

<p>Welche Programme am häufigsten ausgeführt werden kann man durch Ausgabe und
Sortierung der Unix-history erfahren:</p>

<pre>
history | tail -1000 | awk '{print $2}' | \
  awk 'BEGIN {FS="|"} {print $1}' | \
  sort | uniq -c | sort -rn | head -10 | cat -n
</pre>

<p>Bei mir sind das die folgenden Programme:</p>

<pre>
 1      192 ls
 2      130 cd
 3       29 vim
 4       19 clear
 5       18 su
 6       15 rm
 7       14 du
 8       12 ssh
 9       10 firefox
10        7 history
</pre>

<p>Nützlich ist <em>sort</em> auch um Logdateien auf häufige Fehler zu durchsuchen.
Hier ein Beispiel für <em>404-Fehler</em>:</p>

<pre>
cat httpd.log | grep GET | grep 404 | \
  sed 's/^.*GET \([^ ]*\) .*$/\1/' | \
  sort | uniq -c | sort -rn | head -10 | cat -n
</pre>

<p>Dazu habe ich auch eine großartige Liste:</p>

<pre>
 1      161 /favicon.ico
 2       54 /blog/default.css
 3       27 /blog/valid-xhtml10.png
 4        9 /pma/scripts/setup.php
 5        9 /phpMyAdmin/scripts/setup.php
 6        9 /phpmyadmin/scripts/setup.php
 7        8 /myadmin/scripts/setup.php
 8        7 /MyAdmin/scripts/setup.php
 9        4 /blog/LiberationSerif-Regular.ttf/
10        3 /valid-xhtml10.png
</pre>
