DIRS = statlib dynlib executable

.PHONY: dirs $(DIRS)

dirs : $(DIRS)

$(DIRS):
	$(MAKE) -C $@

dynlib : statlib
executable : dynlib

BUILDDIRS = $(DIRS:%=build-%)
$(BUILDDIRS):
	$(MAKE) -C $(@:build-%=%)

all : $(BUILDDIRS)

CLEANDIRS = $(DIRS:%=clean-%)
clean: $(CLEANDIRS)
$(CLEANDIRS): 
	$(MAKE) -C $(@:clean-%=%) clean
