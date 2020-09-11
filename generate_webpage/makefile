#################################################
# YOU SHOULD NOT NEED TO MODIFY THE LINES BELOW #
#################################################
USER 			= tksr
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

.phone: all clean

# IF index.jemdoc IS MODIFIED RECOMPILE index.html AND MOVE TO TOP-LEVEL FOLDER #
all: $(WEBSITE) $(TARGET)

$(WEBSITE): $(TARGET)
	@cp $(TARGET) $(PHOTO) $(STYLE) ..
	@cp -r $(SOURCEDIR) ..

$(TARGET): $(PHOTO) $(STYLE) $(MENU) $(SOURCE) $(MAKEFILE)
	@jemdoc $(SOURCE)
	@mv $(SOURCEDIR)/*.html $(HTMLDIR)

clean:
	@rm $(HTMLDIR)/*
