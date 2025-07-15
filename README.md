# VacuumTube OS (NOT FINISHED) &nbsp; [![bluebuild build badge](https://github.com/jerbmega/vacuumtube-os/actions/workflows/build.yml/badge.svg)](https://github.com/jerbmega/vacuumtube-os/actions/workflows/build.yml)

This is a custom Fedora image built off of Universal Blue. It is a minimal image whose sole purpose is to boot directly into [VacuumTube](https://github.com/shy1132/VacuumTube), a custom YouTube client providing the YouTube TV interface with adblocking and extra features.

Currently, it is not finished and does not work as advertised.

## Installation

> [!WARNING]  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

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
