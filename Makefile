BUILD_DIR=obj
GDB=arm-none-eabi-gdb
BIN=badass

all: $(BIN)

$(BIN): $(BUILD_DIR)
	gprbuild -P $@.gpr -XLOADER=RAM

$(BUILD_DIR):
	mkdir -p $@

check:
	st-util &
	$(GDB) $(BIN)

clean:
	$(RM) -r $(BUILD_DIR)
	$(RM) $(BIN)

.PHONY: clean check
