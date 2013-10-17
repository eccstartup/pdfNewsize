pdfNewsize
==========

resize a pdf file with better reading performance

Things you need:
================
* haskell platform
* texlive or something else with **pdflatex**
* haskell [MissingH](http://hackage.haskell.org/package/MissingH-1.0.0/docs/Data-String-Utils.html) package:
  `cabal install MissingH`
* haskell [HSH](http://hackage.haskell.org/package/HSH-2.1.0/docs/HSH.html) package:
  `cabal install HSH`

Usage:
======
```shell
runhaskell Main.hs file name.pdf
```
or
```
ghc -o Main Main.hs
./Main file name.pdf
```

Notes:
======
Pdf file name can have spaces in it.
