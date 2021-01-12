#!/bin/sh

makeindex master.idx
xelatex -halt-on-error master.tex
