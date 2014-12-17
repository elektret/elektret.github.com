---
layout: post
title: "Haskell: Snake"
date: 2014-12-17 23:07
comments: true
categories:
  - haskell
  - programming
  - snake
---
{% img right /images/blog/snake.jpg 200 Snake %}

Download
    curl -O https://gist.githubusercontent.com/anonymous/ac1101ad7bb5b98cecf0/raw/ab42b0140f535567973eea00a3f4d47aa518d0e4/Makefile
    curl -O https://gist.githubusercontent.com/anonymous/ac1101ad7bb5b98cecf0/raw/b677a6f405651537014f9a5b7604a8afeac673d1/Main.hs
    curl -O https://gist.githubusercontent.com/anonymous/ac1101ad7bb5b98cecf0/raw/7e216c654fdd525cfec3fb266b264bb4bed66b78/snake.cabal

Update OS
    yum update
    yum install -y ghc-OpenGL-devel ghc-OpenGLRaw-devel
    yum install -y freeglut-devel

Build
    cabal update
    cabal install --only-dependencies
    make

Run
    ./bin/snake
