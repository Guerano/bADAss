PDF=do178.pdf
SRC=${PDF:.pdf:.md}

all: ${PDF}

%.pdf: %.md
	pandoc $^ -o $@
