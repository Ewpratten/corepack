load("//tools:templates.bzl", "expand_template")

expand_template(
    name = "config",
    out = "userconfig.json",
    substitutions = {},
    template = "userconfig.json.in",
)

filegroup(
    name = "presencefootsteps",
    srcs = [
        ":config",
    ],
    visibility = ["//visibility:public"],
)
