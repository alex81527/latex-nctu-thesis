all:
	xelatex -synctex=1 -interaction=nonstopmode main.tex	
	bibtex main
	xelatex -synctex=1 -interaction=nonstopmode main.tex	
	xelatex -synctex=1 -interaction=nonstopmode main.tex	
clean:
	rm -f *.bbl *.blg *.aux *.pdf *.toc *.lot *.lof *.log *.toc *.gz
