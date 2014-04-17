FILES = $(wildcard *.sp)
OUTPUT = $(FILES:.sp=.lis)

all: $(OUTPUT)

%.lis: %.sp
	hspice $< > $@

clean:
	rm -f $(OUTPUT)
