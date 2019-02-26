wirkungsbericht.pdf: wirkungsbericht.tex
	latexmk -pdf $< 
	cp build/*.pdf .

watch: wirkungsbericht.tex
	latexmk -pvc -pdf $< 

run:
	xdg-open build/wirkungsbericht.pdf 2>/dev/null

clean:
	rm -rf build/

.PHONY: clean

