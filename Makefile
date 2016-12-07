BUILD_DIR=obj

all: $(BUILD_DIR)
	gprbuild -P badass.gpr -XLOADER=RAM

$(BUILD_DIR):
	mkdir -p $@

clean:
	$(RM) -r $(BUILD_DIR)
	$(RM) badass

.PHONY: clean
