---
layout: post
title: "xkcd: Coverage"
date: 2014-11-14 13:09
comments: true
categories:
  - philae
  - physics
  - xkcd
---
{% img /images/blog/philae.gif 500 Philae landing %}

All images: [www.explainxkcd.com][explainxkcd].

    mogrify -colors 8 *.png
    convert -delay 100 -loop 0 *.png philae.gif

[xkcd][xkcd] is licensed by [Randall Munroe][randall] under [Creative Commons
Attribution-NonCommercial 2.5 License][license].

[explainxkcd]: http://www.explainxkcd.com/wiki/index.php/1446:_Landing
[randall]: https://www.xkcd.com/about/
[xkcd]: https://xkcd.com/1446/
[license]: https://www.xkcd.com/license.html
