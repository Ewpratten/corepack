load("//tools:templates.bzl", "expand_template")

expand_template(
    name = "optifine_options",
    out = "optionsof.txt",
    substitutions = {},
    template = "optionsof.txt.in",
)

filegroup(
    name = "minecraft",
    srcs = [
        ":optifine_options",
        "//modpack/.minecraft/config",
        "//modpack/.minecraft/mods",
        "//modpack/.minecraft/resourcepacks",
        "//modpack/.minecraft/shaderpacks",
    ],
    visibility = ["//visibility:public"],
)
