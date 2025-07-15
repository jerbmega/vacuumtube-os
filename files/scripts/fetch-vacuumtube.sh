#!/usr/bin/env bash
set -oue pipefail

mkdir /etc/vacuumtube
cd /etc/vacuumtube
curl -L https://github.com/shy1132/VacuumTube/releases/latest/download/VacuumTube-x64.tar.gz | tar -xzf -