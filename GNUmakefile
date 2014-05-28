M=$(wildcard *.m)
SVG=$(wildcard *.svg)
M_EPS=$(M:.m=.eps)
SVG_EPS=$(SVG:.svg=.eps)
EPSFIG=$(M_EPS) $(SVG_EPS)

all : project.pdf

project.pdf : project.tex $(EPSFIG)
	pdflatex project.tex
	pdflatex project.tex

%.eps : %.m
	octave $<

%.eps : %.svg
	inkscape $< --export-eps=$(basename $<).eps

.PHONY : clean

clean :
	-rm $(EPSFIG) project.pdf
