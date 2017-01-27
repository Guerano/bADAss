PDF=do178.pdf
SRC=${PDF:.pdf:.md}

all: ${PDF}

%.md: %.mdpp
	markdown-pp $^ -o $@

%.pdf: %.md
	pandoc $^ -o $@
