main:
	qbe -o main.s main.ssa
	gcc -lm -o main main.s

print:
	@echo "\`\`\`qbe"
	@cat main.ssa

clean:
	rm -f main main.s
