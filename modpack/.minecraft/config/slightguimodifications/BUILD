load("//tools:templates.bzl", "expand_template")

expand_template(
    name = "config",
    out = "config.json5",
    substitutions = {},
    template = "config.json5.in",
)

expand_template(
    name = "cts",
    out = "cts.groovy",
    substitutions = {},
    template = "cts.groovy.in",
)

filegroup(
    name = "slightguimodifications",
    srcs = [
        ":config",
    ],
    visibility = ["//visibility:public"],
)
