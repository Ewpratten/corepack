load("//tools:templates.bzl", "expand_template")
load("//:versions.bzl", "versions")

filegroup(
    name = "modpack",
    srcs = [
        ":modpack_files",
        ":zip",
    ],
)

genrule(
  name = "zip",
  srcs = [
      ":modpack_files"
  ],
  outs = ["corepack.zip"],
  cmd = "cd bazel-out/k8-fastbuild/bin/modpack && zip ../../../../$@ $$(echo \"$(SRCS)\" | sed 's|bazel-out/k8-fastbuild/bin/modpack/||g' -)",
)

filegroup(
    name = "modpack_files",
    srcs = [
        ":instance_cfg",
        ":mmc_pack_json",
        "//modpack/.minecraft:minecraft",
    ],
)

expand_template(
    name = "instance_cfg",
    out = "instance.cfg",
    substitutions = {
        "{MODPACK_NAME}": versions["corepack"]["name"],
        "{MODPACK_VERSION}": versions["corepack"]["version"],
    },
    template = "instance.cfg.in",
)

expand_template(
    name = "mmc_pack_json",
    out = "mmc-pack.json",
    substitutions = {
        "{LWJGL_VERSION}": versions["multimc"]["pack"]["lwjgl"]["version"],
        "{MINECRAFT_VERSION}": versions["multimc"]["pack"]["minecraft"]["version"],
        "{FABRIC_VERSION}": versions["multimc"]["pack"]["fabric"]["version"],
    },
    template = "mmc-pack.json.in",
)
