#tex file
SRC=ConvexGpu.tex
IMGFOLDER=img
OUTPUT=$(SRC:.tex=.pdf)
TEXLOG=$(SRC:.tex=.log)
DOTSRC=$(wildcard $(IMGFOLDER)/*.dot)
DOTOUTPUT=$(DOTSRC:.dot=.png)
PLOTSRC=$(wildcard *.plot)
PLOTSRC=$(wildcard $(IMGFOLDER)/*.plot)
PLOTTEX=$(PLOTSRC:.plot=.tex)
#bibliography file
BIB=ConvexGpu.bib

all : $(OUTPUT)

ConvexGpu.pdf: ConvexGpu.tex $(BIB) $(PLOTOUTPUT) $(DOTOUTPUT)
		pdflatex -file-line-error -interaction=nonstopmode --shell-escape $<  
		bibtex $(patsubst %.tex,%.aux,$<) 
		pdflatex -file-line-error -interaction=nonstopmode --shell-escape $<  
		pdflatex -file-line-error -interaction=nonstopmode --shell-escape $<  

#presentation.pdf: presentation.tex $(BIB) $(PLOTOUTPUT) $(DOTOUTPUT)
#		pdflatex -file-line-error -interaction=nonstopmode --shell-escape $<  
#		bibtex $(patsubst %.tex,%.aux,$<) 
#		pdflatex -file-line-error -interaction=nonstopmode --shell-escape $<  
#		pdflatex -file-line-error -interaction=nonstopmode --shell-escape $<  

%.png : %.dot
	dot -Tpng $< > $@

%.eps : %.plot
	cd ./$(IMGFOLDER) && gnuplot ../$< && cd ..
	

.PHONY: clean mrproper

clean :
	rm -f texput.log fit.log *.bbl *.blg $(TEXLOG) *.aux *.dvi *.out *.toc\
		*.snm *.nav *.tdo $(IMGFOLDER)/*-eps-converted-to.pdf* $(PLOTTEX) $(DOTOUTPUT)\
		$(PLOTOUTPUT)

mrproper: clean
	rm -rf $(OUTPUT) 
