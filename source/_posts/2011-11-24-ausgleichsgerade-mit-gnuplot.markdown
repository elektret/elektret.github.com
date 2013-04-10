---
layout: post
title: "Ausgleichsgerade mit GnuPlot"
date: 2011-11-24 16:13
comments: true
categories: 
---
<p>Dies ist eine schnelle Anleitung zur Erstellung einer Ausgleichsgerade mit
GnuPlot. Dazu sollen hier die Messwerte eines Geiger-Müller-Zählers in Abhängigkeit
der anliegenden Spannung betrachtet und im Plateaubereich eine
Ausgleichsgerade konstruiert werden.</p>

<pre>
#!/usr/bin/env gnuplot

unset key
set encoding utf8
set xlabel 'Spannung U[V]'
set ylabel 'Impulsrate N[1/s]'
set xrange [300:710]
set yrange [65:120]
set grid
set terminal png
set output 'geiger_mueller_plateau.png'

f(x) = m*x + b
fit [395:665] f(x) 'geiger_mueller_plateau.dat' \
  using ($3&gt;390 &amp; $3&lt;670 ? $3 : 1/0):4 via m,b

plot (x&gt;395 &amp; x&lt;665) ? f(x) : 1/0 title 'Ausgleichsgerade', \
  'geiger_mueller_plateau.dat' using ($3&gt;0 &amp; $3&lt;710 ? $3:1/0):4:($4*$5)  \
  with yerrorbars title 'Impulsrate'
</pre>

<p>Zunächst wird mit dem <em>fit</em>-Befehl die Ausgleichgerade <em>f</em> durch die Messwerte im
gewünschten Bereich konstruiert. Im <em>plot</em>-Befehl wird <em>f</em> dann nur für den
Plateaubereich definiert. Der Rest ist undefiniert: <em>1/0</em>.</p>
