all : slides clean-crud

slides : src/slides.tex
	pdflatex src/slides.tex
	pdflatex src/slides.tex

clean-crud : 
	rm -rf *.aux *.log *.nav *.snm *.vrb *.out *.toc src/*.bak

spell :
	aspell check -len_GB src/slides.tex

clean : clean-crud
	rm -rf slides.pdf
	
