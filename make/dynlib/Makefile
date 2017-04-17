LDFLAGS += -shared -L../statlib -lStaticLibrary
CPPFLAGS += -I../statlib -DDBUILD_DYNAMIC_LIBRARY=1

TARGET = libDynamicLibrary.so
OBJ = DynamicLibrarySource.o

$(TARGET) : $(OBJ)
	$(CXX) $^ $(LDFLAGS) -o $@

all : $(TARGET)
clean :
	rm -f $(OBJ) $(TARGET)

.PHONY : all clean