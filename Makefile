# Makefile for converting Markdown to PDF using pandoc

# Variables
MARKDOWN_FILE = pandoc-beamer.md
PDF_FILE = pandoc-beamer.pdf
PANDOC = pandoc
PANDOC_FLAGS = -t beamer --slide-level 2 -s

# convert to pdf doc
#PANDOC_FLAGS = -H header.tex --pdf-engine xelatex
#PANDOC_FLAGS = --toc -t pdf -s -f commonmark_x
#PDF_FILE = pandoc-doc.pdf

# Default target
all: $(PDF_FILE)

# Rule to build the PDF from the Markdown file
$(PDF_FILE): $(MARKDOWN_FILE)
	$(PANDOC) $(PANDOC_FLAGS) $< -o $@

# Clean up generated PDF
clean:
	rm -f $(PDF_FILE)

# PHONY targets
.PHONY: all clean

