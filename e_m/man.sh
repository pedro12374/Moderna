#!/bin/bash
cd graf/
gnuplot e_m.plt
cd ..
pdflatex e_m.tex
pdflatex e_m.tex 
 
 
