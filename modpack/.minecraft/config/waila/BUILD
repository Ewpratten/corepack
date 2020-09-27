load("//tools:templates.bzl", "expand_template")

expand_template(
    name = "plugins",
    out = "waila_plugins.json",
    substitutions = {},
    template = "waila_plugins.json.in",
)

filegroup(
    name = "waila",
    srcs = [
        ":plugins",
    ],
    visibility = ["//visibility:public"],
)
