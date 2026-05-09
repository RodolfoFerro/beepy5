SLIDES_DIR = slides
LUALATEX   = lualatex
FLAGS      = -interaction=nonstopmode -halt-on-error

.PHONY: all slides sample clean

all: slides sample

slides:
	cd $(SLIDES_DIR) && $(LUALATEX) $(FLAGS) slides.tex && $(LUALATEX) $(FLAGS) slides.tex

sample:
	cd $(SLIDES_DIR) && $(LUALATEX) $(FLAGS) sample.tex && $(LUALATEX) $(FLAGS) sample.tex

clean:
	cd $(SLIDES_DIR) && rm -f *.aux *.log *.nav *.snm *.toc *.out *.vrb
