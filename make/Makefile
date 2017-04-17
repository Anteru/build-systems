DIRS = statlib dynlib executable

.PHONY: dirs $(DIRS)

build-dynlib : build-statlib
build-executable : build-dynlib

BUILDDIRS = $(DIRS:%=build-%)

all : $(BUILDDIRS)

$(BUILDDIRS):
	$(MAKE) -C $(@:build-%=%)

CLEANDIRS = $(DIRS:%=clean-%)
clean: $(CLEANDIRS)
$(CLEANDIRS): 
	$(MAKE) -C $(@:clean-%=%) clean
