---
layout: post
title: "vorbis2alsa"
date: 2012-03-13 16:34
comments: true
categories:
  - programming
  - audio
---
<p>Als Vorbereitung auf eines meiner, möglicherweise, nächsten Projekte habe ich
mit <em>vorbis2alsa</em> einen minimalistischen Audioplayer geschreiben. Das Programm
kann ein <em>ogg vorbis file</em> öffnen und den Stream an das <em>alsa default interface</em>
weitergeben:</p>

<pre>https://github.com/elektret/petridish/tree/master/vorbis2alsa</pre>

<p>Es wird in Zukunft auch keine grundlegenden Änderungen geben. Für mich waren
nur die Grundlagen von <em>libvorbis</em> und <em>asoundlib</em> wichtig, sowie deren
Kommunikation untereinander. Interessant finde ich aber noch in welcher Form
die Metainformationen in einer ogg-Datei dargestellt werden können. Da wird es
noch etwas geben. Eine große Hilfe beim Umgang mit den Bibliotheken war der
Quelltext von
<a href='http://www.xmms.org'>XMMS</a>.</p>
