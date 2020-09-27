load("//tools:templates.bzl", "expand_template")
load("//:versions.bzl", "versions")

expand_template(
    name = "instance_cfg",
    out = "instance.cfg",
    substitutions = {
        "{MODPACK_NAME}": versions["corepack"]["name"],
        "{MODPACK_VERSION}": versions["corepack"]["version"],
    },
    template = "instance.cfg.in",
)
