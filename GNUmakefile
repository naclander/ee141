M=(wildcard fig*.m)
EPSFIG=(M:.m=.eps)

all : project.pdf

project.pdf : $(EPSFIG) project.tex

%.eps : %.m
	octave $<

.PHONY : clean

clean :
	-rm $(EPSFIG) project.pdf
