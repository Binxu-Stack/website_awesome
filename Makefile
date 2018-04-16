# obtain collection.html and README.md
all: collection.md
	@pandoc --template=default.markdown -f markdown --toc -t html -o collection.html collection.md
	@pandoc --template=default.markdown -f markdown --toc -t markdown_github -o README.md collection.md
