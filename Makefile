#tex file
SRC=report.tex presentation.tex
OUTPUT=$(SRC:.tex=.pdf)
TEXLOG=$(SRC:.tex=.log)
DOTSRC=$(wildcard *.dot)
DOTOUTPUT=$(DOTSRC:.dot=.png)
PLOTSRC=$(wildcard *.plot)
PLOTOUTPUT=$(PLOTSRC:.plot=.eps)
PLOTTEX=$(PLOTSRC:.plot=.tex)
#bibliography file
BIB=report.bib

all : $(OUTPUT)

report.pdf: report.tex $(BIB) $(PLOTOUTPUT) $(DOTOUTPUT)
		pdflatex -file-line-error -interaction=nonstopmode --shell-escape $<  
		bibtex $(patsubst %.tex,%.aux,$<) 
		pdflatex -file-line-error -interaction=nonstopmode --shell-escape $<  
		pdflatex -file-line-error -interaction=nonstopmode --shell-escape $<  

presentation.pdf: presentation.tex $(BIB) $(PLOTOUTPUT) $(DOTOUTPUT)
		pdflatex -file-line-error -interaction=nonstopmode --shell-escape $<  
		bibtex $(patsubst %.tex,%.aux,$<) 
		pdflatex -file-line-error -interaction=nonstopmode --shell-escape $<  
		pdflatex -file-line-error -interaction=nonstopmode --shell-escape $<  

%.png : %.dot
	dot -Tpng $< > $@

%.eps : %.plot
	gnuplot $<
	

.PHONY: clean mrproper

clean :
	rm -f texput.log fit.log *.bbl *.blg $(TEXLOG) *.aux *.dvi *.out *.toc\
		*.snm *.nav *-eps-converted-to.pdf* $(PLOTTEX) $(DOTOUTPUT)\
		$(PLOTOUTPUT)

mrproper: clean
	rm -rf $(OUTPUT) 
