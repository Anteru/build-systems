genrule(
	name = "gentable",
	srcs = ["tablegen.py"],
	outs = ["table.cpp"],
	cmd = "python3 $< > $@"
)

cc_library(
	name = "statlib",
	srcs = ["StaticLibrarySource.cpp", "table.cpp"],
	hdrs = ["StaticLibraryHeader.h"],
	visibility = ["//dynlib:__pkg__"],
	includes = ["."],
	linkstatic = 1
)
