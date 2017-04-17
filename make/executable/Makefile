CPPFLAGS += -I../dynlib
LDFLAGS +=  -L../dynlib -lDynamicLibrary

TARGET = executable
OBJ = ExecutableSource.o

$(TARGET) : $(OBJ)
	$(CXX) $^ $(LDFLAGS) -o $@

all : $(TARGET)
clean :
	rm -f $(OBJ) $(TARGET)

.PHONY : all clean