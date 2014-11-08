---
layout: post
title: "Ruby wird faul"
date: 2012-12-02 14:18
comments: true
categories:
  - ruby
---
<p>Und das macht mich wirklich sehr glücklich.
Kurz vor Mitternacht (Japan Standard Time) wurde gestern die
nächste Vorschau von <em>Ruby 2.0.0</em> auf einer
<a href='http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/50443'>Mailingliste</a> vorgestellt.</p>
<p>Ich verweise hier—durch Links auf die entsprechenden Unit-Tests—auf ein paar Neuerungen:</p>

<ul>
  <li><a href='https://github.com/ruby/ruby/blob/trunk/test/ruby/test_keyword.rb'>Keyword arguments</a></li>
  <li><a href='https://github.com/ruby/ruby/blob/trunk/test/ruby/test_lazy_enumerator.rb'>Enumerable#lazy</a></li>
  <li><a href='https://github.com/ruby/ruby/blob/trunk/test/ruby/test_module.rb'>Module#prepend</a></li>
  <li><a href='https://github.com/ruby/ruby/blob/trunk/test/ruby/test_object.rb'>#to_h: Convention for conversion to Hash</a></li>
  <li><a href='https://github.com/ruby/ruby/blob/trunk/test/ruby/test_literal.rb'>%i: A literal for symbol array</a></li>
  <li><a href='https://github.com/ruby/ruby/blob/trunk/test/ruby/test_regexp.rb'>Regexp engine was changed to Onigmo</a></li>
</ul>

<p>Die Faulheit von Ruby erlaubt es jetzt auch unendliche Mengen zu behandeln.
Das geht etwa sowie im echten Leben: Man kann eine Menge von sämtlichen,
natürlichen Zahlen erstmal definieren, aber zur Laufzeit dann nur den Teil
bearbeiten der auch wirklich gebraucht wird:</p>

<pre>
#!/usr/bin/env ruby-2
require 'prime'
(1..Float::INFINITY).lazy.map { |n| n**2+1 }.select { |m| m.prime? }
  .take(42).each { |value| puts value }
</pre>

<p>Noch ein Beispiel:</p>

<pre>
#!/usr/bin/env ruby-2
(23..Float::INFINITY).lazy.take_while { |value| value &lt; 43 }
  .each { |value| puts value }
</pre>
