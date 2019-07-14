html = $(patsubst %.md,%.html,$(notdir $(wildcard src/*.md)))

all: $(html)

%.html : src/%.md
	@echo "    GEN        " $@
	@cat src/template.html > $@
	@pandoc $^ >> $@
	@echo "</main>\n</body>\n</html>" >> $@

clean:
	rm -f *.html
