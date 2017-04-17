CPPFLAGS += -fPIC

OBJ = StaticLibrarySource.o table.o
TARGET = libStaticLibrary.a
.DEFAULT_GOAL := $(TARGET)

table.cpp : tablegen.py
	python3 tablegen.py > table.cpp

$(TARGET) : $(OBJ)
	ar rcs $(TARGET) $(OBJ)

all : $(TARGET)

clean :
	rm -f table.cpp $(OBJ) $(TARGET)

.PHONY : clean all