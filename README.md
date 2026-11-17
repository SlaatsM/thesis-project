## External Dependencies

### MeGASampler and z3 (patched)
Both are included as git submodules. After cloning this repository, initialize them with:

    git submodule update --init --recursive

This checks out the exact commits this project was built and tested against
(pinned in `.gitmodules` / the superproject's index — see `git submodule status`
for the current SHAs). The z3 submodule contains the patches described in
https://github.com/chaosite/MeGASampler; build it as described in the MeGASampler README.

### CSB Binary

The `external/csb/csb` binary included in this repository is taken from the official CSB v2.0.3 release.

- **Source:** https://github.com/meelgroup/csb/releases/tag/v2.0.3
- **Original filename:** `csb-linux-amd64` (from `csb-linux-amd64.zip`)
- **Checksum:** `27714a80b3262f2bc8142754aee3584492c54eccdf8a24343fcc3686ea5c93e5`

## Running with Docker

The experiments are designed to run inside a Docker container to ensure a consistent, reproducible environment. 
To build and run:

    git submodule update --init --recursive
    docker compose build
    docker compose run --rm thesis-sampling

Results are written to `./results` on the host via a mounted volume.

Requires Docker (https://www.docker.com/products/docker-desktop/) to be installed and running.