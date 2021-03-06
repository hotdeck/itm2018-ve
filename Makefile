
.PHONY: build
build:
	R -e 'rmarkdown::render("docs/index.Rmd")'

push: build
	git status && \
	git add . && \
	git commit -a -m"Updated slides" && \
	git push

pdf: push
	sleep 60s && \
	docker run -v `pwd`/docs:/slides astefanutti/decktape https://hotdeck.github.io/itm2018-ve/ ITM2018-1C3.pdf