load("//tools:templates.bzl", "expand_template")

expand_template(
    name = "optifine_options",
    out = "optionsof.txt",
    substitutions = {},
    template = "optionsof.txt.in",
)

expand_template(
    name = "optifine_shaders_options",
    out = "optionsshaders.txt",
    substitutions = {},
    template = "optionsshaders.txt.in",
)

expand_template(
    name = "minecraft_options",
    out = "options.txt",
    substitutions = {},
    template = "options.txt.in",
)

filegroup(
    name = "minecraft",
    srcs = [
        ":minecraft_options",
        ":optifine_options",
        ":optifine_shaders_options",
        "//modpack/.minecraft/config",
        "//modpack/.minecraft/mods",
        "//modpack/.minecraft/resourcepacks",
        "//modpack/.minecraft/shaderpacks",
    ],
    visibility = ["//visibility:public"],
)
