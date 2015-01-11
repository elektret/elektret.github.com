---
layout: post
title: 'Just "Hello!"'
date: 2015-01-11 16:12
comments: true
categories:
  - haskell
  - programming
---
    return "Hello!" :: Maybe [Char]

    (++ "!") `fmap` Just "Hello"
    Just "Hello" >>= return . (++ "!")
    [ Just "Hello" ] >>= return . fmap (++ "!")
    [ Just "Hello" ] >>= \(Just x) -> return (x ++ "!")
    Just "Hello" : [] >>= \x -> return $ x >>= \y -> return (y ++ "!")
    maybe [] (\x -> x ++ "!") $ Just "Hello"
    (\(Just x:Just y:_) -> x ++ y) [Just "Hello", Just "!"]
    [Just "Hello", Just "!"] >>= foldl1 (++) . \(Just x) -> return x
