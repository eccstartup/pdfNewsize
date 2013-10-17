module Main
       (
         main
       ) where

import System.Environment
import Data.String.Utils(join)
import HSH

--a4paper
--scale=0.7
--offset = -2.5cm 5cm

toLaTeX filename = unlines $ pdfString
  where pdfString = ["\\documentclass[12pt]{article}",
                     "\\usepackage{geometry}",
                     "\\usepackage[final]{pdfpages}",
                     "\\usepackage[space]{grffile}",
                     "\\geometry{a4paper}",
                     "\\begin{document}",
                     "\\pagestyle{empty}",
                     "\\includepdf[pages=-,pagecommand={},offset=-2.5cm 5cm,scale=0.7]{" ++ filename ++ "}",
                     "\\end{document}"]

main = do
  args <- getArgs
  writeFile "tset.tex" $ toLaTeX $ join " " args
  runIO "pdflatex tset.tex"
