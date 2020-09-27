load("@bazel_skylib//rules:copy_file.bzl", "copy_file")
load("//:versions.bzl", "versions")

# Load every shader as a rule
# This uses some syntax magic to trick bazel into doing something it should not be able to
_ = [
    copy_file(
        name = shader["name"],
        src = "@{name}//file".format(name = shader["name"]),
        out = "{name}.zip".format(name = shader["name"]),
    )
    for shader in versions["shaders"]
]

# Bundle all files together
filegroup(
    name = "shaderpacks",
    srcs = [
        ":{name}".format(name = shader["name"])
        for shader in versions["shaders"]
    ],
    visibility = ["//visibility:public"],
)
