all: resume.pdf

resume.pdf:
	latexmk -xelatex resume.tex

clean:
	latexmk -c resume.tex

.PHONY: all clean resume.pdf
