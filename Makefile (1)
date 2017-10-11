all: main report.pdf 

var1 = main.o calc.o show.o

f11 = esense-scenarios.eps

f12 = esense-scenarios.svg

f21 = lo3-ex.eps

f22 = lo3-ex.svg
 
main: $(var1)
	cc -o main $(var1)
	
show.o: show.c hdr.h

calc.o: calc.c hdr.h 

main.o: main.c hdr.h

report.pdf: report.tex introduction.tex understanding.tex relatedwork.tex $(f11) $(f21) report.aux
	pdflatex report

esense-scenarios.eps: $(f12)
	inkscape -D -E $(f11) $(f12)

lo3-ex.eps: $(f22)
	inkscape -D -E $(f21) $(f22)

report.aux: report.bib
	pdflatex report
	bibtex report
	for i in `seq 2`;do pdflatex report; done 

.PHONY: clean

clean: 
	rm -f *.o main *.eps *.pdf 


