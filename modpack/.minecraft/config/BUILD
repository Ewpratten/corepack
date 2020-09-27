load("//tools:templates.bzl", "expand_template")

expand_template(
    name = "trajectoryconfig",
    out = "trajectoryconfig.json",
    substitutions = {},
    template = "trajectoryconfig.json.in",
)

expand_template(
    name = "appleskin_client",
    out = "appleskin-client.toml",
    substitutions = {},
    template = "appleskin-client.toml.in",
)

expand_template(
    name = "gameinfo",
    out = "gameinfo.json",
    substitutions = {},
    template = "gameinfo.json.in",
)

expand_template(
    name = "gamemode_overhaul",
    out = "gamemode_overhaul.json",
    substitutions = {},
    template = "gamemode_overhaul.json.in",
)

expand_template(
    name = "xaeroworldmap",
    out = "xaeroworldmap.txt",
    substitutions = {},
    template = "xaeroworldmap.txt.in",
)

expand_template(
    name = "xaeropatreon",
    out = "xaeropatreon.txt",
    substitutions = {},
    template = "xaeropatreon.txt.in",
)

expand_template(
    name = "xaerominimap",
    out = "xaerominimap.txt",
    substitutions = {},
    template = "xaerominimap.txt.in",
)

filegroup(
    name = "config",
    srcs = [
        ":appleskin_client",
        ":gameinfo",
        ":gamemode_overhaul",
        ":trajectoryconfig",
        ":xaerominimap",
        ":xaeropatreon",
        ":xaeroworldmap",
        "//modpack/.minecraft/config/waila",
    ],
    visibility = ["//visibility:public"],
)
