cc_library(
	name = "dynlib",
	srcs = ["DynamicLibrarySource.cpp"],
	hdrs = ["DynamicLibraryHeader.h"],
	deps = ["//statlib"],
	includes = ["."],
	visibility = ["//visibility:public"],
	copts = ["-DBUILD_DYNAMIC_LIBRARY=1"]
)
