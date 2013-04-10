---
layout: post
title: "Darsellung von Formeln"
date: 2012-12-12 11:11
comments: true
categories: 
---
<p>Wollte man früher mathematische Symbole im Web darstellen
hat man diese erst in TeX oder LaTeX geschreiben, dann in Bilder umgewandelt
und dann diese in Web-Seiten eingebunden. Das ist heute noch zum Teil
<a href='http://de.wikipedia.org/wiki/Hilfe:TeX'>best practice</a>.
Hat aber den Nachteil, dass alle Informationen über Textfluss und Schriftgrad
sowie semantische Informationen verloren gehen und Änderungen sehr zeitaufwändig sind.</p>

<p>Es gibt einige Bestrebungen (<a href='http://www.math.union.edu/~dpvc/jsmath'>jsMath</a>,
<a href='http://mathscribe.com/author/jqmath.html'>jqMath</a>) das doch mal zu ändern.
Das vielversprechendste Projekt
<a href='http://www.mathjax.org'>MathJax</a>
versteht verschiedene Syntaxen und kann diese auch ineinander umwandeln:</p>

<p><a href='https://gist.github.com/4257737'>MathJax: Converts TeX to MathML</a></p>

<p>Damit können Formeln erstmal in TeX geschrieben werden—bzw. XML-Dokumente
mit MathML erweitert werden—und später im Web dargestellt werden.
<a href='http://mxreg.github.com/zahlenpresse//site/partielle_integration.html'>Hier ist ein Beispiel.</a></p>
