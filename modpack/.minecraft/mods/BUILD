load("@bazel_skylib//rules:copy_file.bzl", "copy_file")
load("//:versions.bzl", "versions")

# Handle optifine
# copy_file(
#     name = "optifine",
#     src = "@optifine//file",
#     out = "optifine.jar",
# )

# Load every curse mod as a rule
# This uses some syntax magic to trick bazel into doing something it should not be able to
# _ = [
#     copy_file(
#         name = mod["name"],
#         src = "@curse_maven_{name}//maven".format(name = mod["name"]),
#         out = "{name}.jar".format(name = mod["name"]),
#     )
#     for mod in versions["mods"]
# ]

_ = [
    copy_file(
        name = mod.split(".")[0].replace("-", "_"),
        src = mod,
        out = mod.split(".")[0] + ".gen.jar",
    )
    for mod in glob(["*.jar"])
]

# Bundle all files together
filegroup(
    name = "mods",
    # srcs = [
    #     ":optifine",
    # ] + [
    #     ":{name}".format(name = mod["name"])
    #     for mod in versions["mods"]
    # ],
    srcs = [
        ":{name}".format(name = mod.split(".")[0].replace("-", "_"))
        for mod in glob(["*.jar"])
    ],
    visibility = ["//visibility:public"],
)
