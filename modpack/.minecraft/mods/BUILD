load("@bazel_skylib//rules:copy_file.bzl", "copy_file")
load("//:versions.bzl", "versions")

# Handle optifine
copy_file(
    name = "optifine",
    src = "@optifine//file",
    out = "optifine.jar",
)

# Load every curse mod as a rule
# This uses some syntax magic to trick bazel into doing something it should not be able to
_ = [
    copy_file(
        name = mod["name"],
        src = "@curse_maven_{name}//maven".format(name = mod["name"]),
        out = "{name}.jar".format(name = mod["name"]),
    )
    for mod in versions["mods"]
]

# Bundle all files together
filegroup(
    name = "mods",
    srcs = [
        ":optifine",
    ] + [
        ":{name}".format(name = mod["name"])
        for mod in versions["mods"]
    ],
    visibility = ["//visibility:public"],
)
