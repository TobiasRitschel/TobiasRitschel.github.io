#################################################
# YOU SHOULD NOT NEED TO MODIFY THE LINES BELOW #
#################################################
MAKEFILE  = ./makefile
SOURCEDIR = ./src
HTMLDIR   = ./html
SOURCE 		= $(wildcard $(SOURCEDIR)/*.jemdoc)
TARGET 		= $(addprefix $(HTMLDIR)/, $(notdir $(SOURCE:.jemdoc=.html)))
PHOTO  		= pic/$(USER).jpg
STYLE  		= css/jemdoc.css
MENU		= MENU

# IF index.jemdoc IS MODIFIED RECOMPILE index.html AND SEND TO IMM SERVER #
$(TARGET): $(PHOTO) $(STYLE) $(MENU) $(SOURCE) $(MAKEFILE)
	@jemdoc $(SOURCE)
	@mv $(SOURCEDIR)/*.html $(HTMLDIR)
	@cp $(HTMLDIR)/index.html $(PHOTO) $(STYLE) .
