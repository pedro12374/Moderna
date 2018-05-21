#!/bin/bash
cd grafico/
gnuplot gotas.plt
cd ..
pdflatex gotas.tex
pdflatex gotas.tex 
 
 
