# CorePack ![Build Modpack](https://github.com/Ewpratten/corepack/workflows/Build%20Modpack/badge.svg)

CorePack is my client-side modpack I have been playing with for years. This repo contains the buildscripts to package all needed resources into a MultiMC instance zip file

## Installation

Installation is simple. Install [MultiMC](https://multimc.org/), and grab [the latest CorePack zip](https://github.com/Ewpratten/corepack/releases/latest). Inside MultiMC, `add a new instance`, and select the downloaded ZIP file.

### Post-install

Once Minecraft is launched, you will need to go in to the resource pack menu, and enable all the packs marked `incompatible`. By default, modpacks cannot load textures from older versions, even though they are compatible with eachother anyways.

## Building

CorePack requires [`bazel`](https://bazel.build).

```sh
# Build CorePack
bazel build //modpack

# Inspect the output
file ./bazel-bin/modpack/corepack.zip
```