all : slides clean-crud

slides : src/slides.tex
	pdflatex src/slides.tex
	pdflatex src/slides.tex

clean-crud : 
	rm -rf *.aux *.log *.nav *.snm *.vrb *.out *.toc

clean : clean-crud
	rm slides.pdf
	
