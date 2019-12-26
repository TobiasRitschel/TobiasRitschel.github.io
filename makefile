# Call makefile in generate_webpage
all:
	@make -C ./generate_webpage

clean:
	@rm ./*.html
	@rm ./*.jpg
	@rm ./*.css
	@rm -r ./src
