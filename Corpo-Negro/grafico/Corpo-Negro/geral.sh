#!/bin/bash
 
# created     : 2018/06/12
# last update : 2018/06/12
# author      : Pedro Haerter <pedrohaerter.095@gmail.br>
# notes       : 
 
a=`ls | wc -l` #quantidade de arquivos na pasta


for i in {1..$a}
do
	echo "$i"
done
