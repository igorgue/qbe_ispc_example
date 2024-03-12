main:
	qbe -o main.s main.ssa
	ispc to_upper.ispc -o to_upper.ispc.s --emit-asm --target avx512skx-i32x16 -h to_upper.ispc.h
	gcc -S to_upper.s -c to_upper.c
	gcc -o main main.s to_upper.s to_upper.ispc.s

print:
	@echo "\`\`\`qbe"
	@cat main.ssa
	@echo "\`\`\`\n"
	@echo "\`\`\`ispc"
	@cat to_upper.ispc
	@echo "\`\`\`\n"
	@echo "\`\`\`c"
	@cat to_upper.c
	@echo "\`\`\`\n"

clean:
	rm -f to_upper.ispc.h to_upper.ispc.s to_upper.s main.s main
