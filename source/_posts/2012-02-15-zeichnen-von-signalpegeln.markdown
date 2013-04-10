---
layout: post
title: "Zeichnen von Signalpegeln"
date: 2012-02-15 15:36
comments: true
categories: 
---
<p>In den letzten Tagen musste ich für eine digitale Schaltung—also für eine
regenerationsfähige Schaltung in der nur diskrete Spannungen genutzt werden—die
Signalpegel, an den Ein- und Ausgängen der einzelnen Bauelemente, in einem
Diagramm darstellen.</p>

<p>Für die Umsetzung habe ich mir überlegt ein kleines
<a href='https://github.com/mxreg/petridish/tree/master/hl-evel'>Computerprogramm</a>
zu schreiben, das eine Textdatei ließt und die graphische Darstellung in Form
einer png-Datei ausgibt.</p>

<p>Hier ist ein Beispiel zu der folgenden Datei:</p>

<pre>
# Example ###############
HLHLHLHLHLHLHLHLHLHLHLHLH : Timebase
HHHHHHLLHHHHHHHHHHHHHHHHH : S
HHHHHHHHHHHHHHHHHHHLLHHHH : R
LLLLLLHHHHHHHHHHHHHLLLLLL : Q
LLLLLLHLHLHLHLHLHLHLLLLLL : Q AND Timebase
#########################
</pre>

<p>Vielleicht ist es auch möglich mit diesem Befehl die Funktionalität des
ungetesteten und unspezifizierten Programm nachzuvollziehen:</p>

<pre>hl-evel example.hl example.png</pre>

<p>Dabei ist example.hl die Eingabedatei und example.png die Ausgabedatei. Tests
als Ersatz für die Spezifikation schreibe ich noch, wenn ich das mal gelernt
habe. Dann bleibt noch zu erwähnen, dass neben der Ruby Standard Library 1.9.3
auch chunky_png benötigt wird.</p>

<p>Beispiel:</p>

<pre>
export GEM_HOME=~/gems/1.9.3/
gem install chunky_png
</pre>
