src-dir := src/
inc-dir := include/

target-dir := target/
srcs := $(wildcard $(src-dir)*.asm)
incs := $(wildcard $(inc-dir)*.asm)
objs := $(patsubst $(src-dir)%.asm, $(target-dir)%.o, $(srcs))

main-run: 
	$(target-dir)main

main: mk-dirs $(objs) $(incs) 
	ld -m elf_i386 $(objs) -o $(target-dir)main 

$(objs): $(target-dir)%.o: $(src-dir)%.asm $(incs) 
	nasm -f elf $@ -o $< -I $(inc-dir)

mk-dirs: mkdir -p $(target-dir)
