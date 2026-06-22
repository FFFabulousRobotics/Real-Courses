build:
	@mkdir -p dist
	@mkdir -p dist/public
	@cp public/style.css dist/public/style.css
	@pandoc -s Course0/Course0.md -o dist/Course0.html -c public/style.css
