#include "DynamicLibraryHeader.h"

#include "statlib/StaticLibraryHeader.h"

namespace BuildTest {
int DynamicFunction (int a, int b, int c)
{
	return a * HelperFunction (b, c);
}
}