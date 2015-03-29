STYLE = customdocstyle.html
SRC = src/lib.rs

NUM = --extern num=$(wildcard ./target/debug/deps/libnum*)

docs: $(STYLE) $(SRC)
	rustdoc --html-in-header $(STYLE) -L target/debug/deps $(NUM) $(SRC)

.PHONY: docs
