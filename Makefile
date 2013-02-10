pdf: power-of-vim.pdf

# second call of latex is required to embed table of contents
power-of-vim.pdf: power-of-vim.tex beamerthemekeynote-black.sty
	xelatex $<
	xelatex $<

view: power-of-vim.pdf
	xdg-open $<

clean:
	@rm -fv *.dvi *.out *.nav *.snm *.aux *.log *.toc *~ *.vrb
