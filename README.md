# VacuumTube OS &nbsp; [![bluebuild build badge](https://github.com/jerbmega/vacuumtube-os/actions/workflows/build.yml/badge.svg)](https://github.com/jerbmega/vacuumtube-os/actions/workflows/build.yml)

This is a custom Fedora image built off of Universal Blue. It is a minimal image whose sole purpose is to boot directly into [VacuumTube](https://github.com/shy1132/VacuumTube), a custom YouTube client providing the YouTube TV interface with adblocking and extra features. To facilitate controlling the UI from a phone, a [Unified Remote](https://www.unifiedremote.com/) server is integrated as well. The remote and server is sadly proprietary and I would love to replace it with a viable open-source alternative.

## Installation

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/jerbmega/vacuumtube-os:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/jerbmega/vacuumtube-os:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/jerbmega/vacuumtube-os
```
