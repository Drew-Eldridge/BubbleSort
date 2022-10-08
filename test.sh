#!/bin/bash
for j in {0..2}
	 do
	     if [ $j -eq 0 ]; then folder="random"; fi
	     if [ $j -eq 1 ]; then folder="ordered"; fi
	     if [ $j -eq 2 ]; then folder="reverse-ordered"; fi
	     echo $folder
	     for i in {5..5}
	     do
		 num=$((10**$i))
		 for _ in {0..4}
		 do
		     time cat words/$folder/$folder-10e$i.txt | swift main.swift 
		     echo $num "words"
		 done
	     done
done      
