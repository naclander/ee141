M=$(wildcard fig*.m)
EPSFIG=$(M:.m=.eps)

all : project.pdf

project.pdf : project.tex $(EPSFIG)
	pdflatex project.tex
	pdflatex project.tex

%.eps : %.m
	octave $<

.PHONY : clean

clean :
	-rm $(EPSFIG) project.pdf
