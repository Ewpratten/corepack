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

# Load BSL tweaks
copy_file(
    name = "bsl_foliage",
    src = "@bsl_tweaks//:BSL Foliage Tweaks.zip",
    out = "BSL_Foliage.zip",
)
copy_file(
    name = "bsl_sky",
    src = "@bsl_tweaks//:BSL Sky.zip",
    out = "BSL_Sky.zip",
)
copy_file(
    name = "bsl_ui",
    src = "@bsl_tweaks//:BSL UI.zip",
    out = "BSL_UI.zip",
)

# Bundle all files together
filegroup(
    name = "resourcepacks",
    srcs = [
        ":{name}".format(name = texture["name"])
        for texture in versions["textures"]
    ] + [
        ":bsl_foliage",
        ":bsl_sky",
        ":bsl_ui",
    ],
    visibility = ["//visibility:public"],
)
