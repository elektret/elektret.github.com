---
layout: post
title: "12d1:1001 Huawei Technologies"
date: 2014-09-16 11:47
comments: true
categories: 
---
    $ mkdir medion; cd medion
    $ gem install serialport
    $ curl -o medion.rb http://pastebin.com/raw.php?i=1ZD0KnAv
    $ curl -o pdu.rb http://pastebin.com/raw.php?i=p9Nmh7Es

    Usage: medion.rb [options]
        -v, --[no-]verbose               Run verbosely
        -b, --[no-]balance               Print balance
        -d, --device STRING              Specify device file
        -p, --pin STRING                 PIN Number

    $ ruby medion.rb -d /dev/ttyUSB2 
        /dev/ttyUSB2 responding ...

        Manufacturer: huawei
        Model: E160
        Revision: 11.608.06.00.52
