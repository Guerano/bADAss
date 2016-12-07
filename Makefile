BUILD_DIR=obj

all:$(BUILD_DIR)
	gprbuild -P demo.gpr -XLOADER=RAM

$(BUILD_DIR):
	mkdir -p $@

clean:
	$(RM) -r $(BUILD_DIR)

.PHONY: clean
