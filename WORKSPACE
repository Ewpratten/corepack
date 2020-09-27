workspace(
    name = "corepack",
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

# Load Python3 and needed deps
http_archive(
    name = "rules_python",
    sha256 = "b5668cde8bb6e3515057ef465a35ad712214962f0b3a314e551204266c7be90c",
    strip_prefix = "rules_python-0.0.2",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.0.2/rules_python-0.0.2.tar.gz",
)

load("@rules_python//python:pip.bzl", "pip3_import", "pip_repositories")

pip_repositories()

pip3_import(
    name = "python_deps",
    requirements = "//:requirements.txt",
)

load("@python_deps//:requirements.bzl", "pip_install")

pip_install()

http_archive(
    name = "bazel_skylib",
    sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
    urls = [
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
    ],
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

# Minecraft maven
MAVEN_REPOSITORY_RULES_VERSION = "1.2.0"

MAVEN_REPOSITORY_RULES_SHA = "9e23155895d2bfc60b35d2dfd88c91701892a7efba5afacdf00cebc0982229fe"

http_archive(
    name = "maven_repository_rules",
    sha256 = MAVEN_REPOSITORY_RULES_SHA,
    strip_prefix = "bazel_maven_repository-%s" % MAVEN_REPOSITORY_RULES_VERSION,
    type = "zip",
    urls = ["https://github.com/square/bazel_maven_repository/archive/%s.zip" % MAVEN_REPOSITORY_RULES_VERSION],
)

load("@maven_repository_rules//maven:maven.bzl", "maven_repository_specification")
load("@maven_repository_rules//maven:jetifier.bzl", "jetifier_init")
load("//:versions.bzl", "versions")

jetifier_init()

# This pulls in every needed mod from curseforge
maven_repository_specification(
    name = "maven",
    artifacts = {"curse.maven:{descriptor}:{id}".format(
        descriptor = x["name"],
        id = x["file_id"],
    ): {
        "insecure": x.get("SHA256", None) == None,
        "sha256": x.get("SHA256", ""),
    } for x in versions["mods"]},
    repository_urls = [
        "https://www.cursemaven.com",
        "https://repo1.maven.org/maven2",
    ],
)

# Manually pull in optifine
http_file(
    name = "optifine",
    sha256 = versions["optifine"]["SHA256"],
    urls = [versions["optifine"]["url"]],
)

# Pull in shaders
_ = [
    http_file(
        name = shader["name"],
        urls = [
            shader["url"],
        ],
    )
    for shader in versions["shaders"]
]

# Pull in textures
_ = [
    http_file(
        name = texture["name"],
        urls = [
            texture["url"],
        ],
    )
    for texture in versions["textures"]
]
