
build: components index.js todo-filter.css template.js
	@component build --dev

template.js: template.html
	@component convert $<

template.html: template.jade
	@jade -P $<

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

docme: build
	mv build _build
	mv test _test
	git checkout gh-pages
	mv _build build
	mv _test test

.PHONY: clean docme
