load("@bazel_skylib//rules:copy_file.bzl", "copy_file")
load("//:versions.bzl", "versions")

# Load every texture as a rule
# This uses some syntax magic to trick bazel into doing something it should not be able to
_ = [
    copy_file(
        name = texture["name"],
        src = "@{name}//file".format(name = texture["name"]),
        out = "{name}.zip".format(name = texture["name"]),
    )
    for texture in versions["textures"]
]

# Bundle all files together
filegroup(
    name = "resourcepacks",
    srcs = [
        ":{name}".format(name = texture["name"])
        for texture in versions["textures"]
    ],
    visibility = ["//visibility:public"],
)
