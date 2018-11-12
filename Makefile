all: lint

shfmt:
	@stank lib | xargs shfmt -w -i 4

bashate:
	@stank lib | xargs bashate

shlint:
	@stank lib | xargs shlint

checkbashisms:
	@stank lib | xargs checkbashisms -n -p

shellcheck:
	@stank lib | xargs shellcheck

funk:
	@funk .

editorconfig:
	@git ls-files -z | grep -av patch | xargs -0 -r -n 100 $(shell npm bin)/eclint check

lint: shfmt bashate shlint checkbashisms shellcheck funk editorconfig
