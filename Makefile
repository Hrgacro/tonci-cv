.PHONY: all html pdf clean

all: html pdf

html: dist/index.html

dist/index.html: content/index.md templates/template.html static/style.css static/script.js
	pandoc content/index.md \
	  --from markdown+yaml_metadata_block \
	  --template=templates/template.html \
	  -o dist/index.html

pdf: dist/Tonci-Hrgovic-CV.pdf

dist/Tonci-Hrgovic-CV.pdf: content/index.md templates/template.tex
	pandoc content/index.md \
	  --pdf-engine=xelatex \
	  --template=templates/template.tex \
	  -o dist/Tonci-Hrgovic-CV.pdf

clean:
	rm -rf dist/*
