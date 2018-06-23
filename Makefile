
.PHONY: build
build:
	R -e 'rmarkdown::render("docs/index.Rmd")'

push: build
	git status && \
	git add . && \
	git commit -a -m"Updated slides" && \
	git push

