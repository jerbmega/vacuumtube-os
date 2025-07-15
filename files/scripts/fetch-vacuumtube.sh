#!/usr/bin/env bash
set -oue pipefail

cd /etc
curl -L https://github.com/shy1132/VacuumTube/releases/latest/download/VacuumTube-x64.tar.gz | tar -xzf -
mv VacuumTube-x64 vacuumtube