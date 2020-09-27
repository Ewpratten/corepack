"""Tools for forcing bazel to load a file"""

def force_file(name, src, **kwargs):
    native.genrule(
        name = name,
        srcs = [src],
        outs = [src],
        cmd = "cp $< $@",
    )
