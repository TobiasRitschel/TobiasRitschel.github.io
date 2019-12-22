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
WEBSITE 	= \
	$(addprefix ../, $(notdir $(SOURCE:.jemdoc=.html))) \
	$(addprefix ../, $(notdir $(PHOTO))) \
	$(addprefix ../, $(notdir $(STYLE)))

# IF index.jemdoc IS MODIFIED RECOMPILE index.html AND MOVE TO TOP-LEVEL FOLDER #
all: $(WEBSITE) $(TARGET)

$(TARGET): $(PHOTO) $(STYLE) $(MENU) $(SOURCE) $(MAKEFILE)
	@jemdoc $(SOURCE)
	@mv $(SOURCEDIR)/*.html $(HTMLDIR)

$(WEBSITE): $(TARGET)
	@cp -r $(TARGET) $(PHOTO) $(STYLE) ..
