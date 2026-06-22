build:
	@mkdir -p dist
	@pandoc -f markdown -t html -o dist/course0.html Course0/Course0.md
