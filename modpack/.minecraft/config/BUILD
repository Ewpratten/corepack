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

expand_template(
    name = "blur",
    out = "blur.json",
    substitutions = {},
    template = "blur.json.in",
)

expand_template(
    name = "durabilityviewer",
    out = "durabilityviewer.json",
    substitutions = {},
    template = "durabilityviewer.json.in",
)

expand_template(
    name = "modmenu",
    out = "modmenu.json",
    substitutions = {},
    template = "modmenu.json.in",
)

expand_template(
    name = "notenoughcrashes",
    out = "notenoughcrashes.json",
    substitutions = {},
    template = "notenoughcrashes.json.in",
)

expand_template(
    name = "lightoverlay",
    out = "lightoverlay.properties",
    substitutions = {},
    template = "lightoverlay.properties.in",
)

expand_template(
    name = "namepain",
    out = "namepain.toml",
    substitutions = {},
    template = "namepain.toml.in",
)

filegroup(
    name = "config",
    srcs = [
        ":appleskin_client",
        ":blur",
        ":durabilityviewer",
        ":gameinfo",
        ":gamemode_overhaul",
        ":lightoverlay",
        ":modmenu",
        ":namepain",
        ":notenoughcrashes",
        ":trajectoryconfig",
        ":xaerominimap",
        ":xaeropatreon",
        ":xaeroworldmap",
        "//modpack/.minecraft/config/presencefootsteps",
        "//modpack/.minecraft/config/slightguimodifications",
        "//modpack/.minecraft/config/waila",
    ],
    visibility = ["//visibility:public"],
)
