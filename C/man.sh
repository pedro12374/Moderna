#!/bin/bash
cd Graficusao/
gnuplot c.plt
cd ..
pdflatex C.tex
bibtex C.aux
pdflatex C.tex 
 
 
