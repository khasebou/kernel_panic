export ROOT_DIR = ${PWD}

all: make_dir boot1
	
run: all
	bochs -f config/bochs_config.txt -q

make_dir:
	echo ${ROOT_DIR}
	mkdir -p ${ROOT_DIR}/build

boot1: src/boot1.asm
	nasm -f bin src/boot1.asm -o $(ROOT_DIR)/build/boot1.bin

clean:
	rm -r build
	