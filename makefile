####################################
# PLEASE SPECIFY YOUR IMM USERNAME #
####################################
USER = tobk

#################################################
# YOU SHOULD NOT NEED TO MODIFY THE LINES BELOW #
#################################################
SERVER 		= serv1.imm.dtu.dk:/www/home/$(USER)/public_html
MAKEFILE  = makefile
SOURCEDIR = src
HTMLDIR   = html
SOURCE 		= $(wildcard $(SOURCEDIR)/*.jemdoc)
TARGET 		= $(addprefix $(HTMLDIR)/, $(notdir $(SOURCE:.jemdoc=.html)))
PHOTO  		= pic/$(USER).jpg
STYLE  		= css/jemdoc.css
MENU			= MENU

# IF index.jemdoc IS MODIFIED RECOMPILE index.html AND SEND TO IMM SERVER #
$(TARGET): $(PHOTO) $(STYLE) $(MENU) $(SOURCE) $(MAKEFILE)
	@./jemdoc.py $(SOURCE)
	@mv $(SOURCEDIR)/*.html $(HTMLDIR)
#	@scp -r $(TARGET) $(PHOTO) $(STYLE) src $(USER)@$(SERVER)
	
