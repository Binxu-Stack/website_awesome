# obtain collection.html and README.md
#
all: collection.html README.md

collection.html: collection.md
	@pandoc --template=default.markdown -f markdown --toc -t html -o collection.html collection.md

README.md: collection.md
	@pandoc --template=default.markdown -f markdown --toc -t markdown_github -o README.md collection.md
