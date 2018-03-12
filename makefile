all: bylaws.pdf

bylaws.pdf: README.md bylaws/*.md
	pandoc --pdf-engine=xelatex -V 'geometry:margin=1in' -V 'mainfont:Helvetica Neue' README.md bylaws/*.md -o bylaws.pdf

clean:
	rm -f bylaws.pdf