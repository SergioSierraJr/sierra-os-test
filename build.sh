#!/bin/sh

# I dont think I need this because I wont do any piping but ill keep it just incase
set -ouex pipefail

# Just to fetch repos
RELEASE="$(rpm -E %fedora)"

curl -sSLo /etc/yum.repos.d/edge.repo https://packages.microsoft.com/yumrepos/edge/config.repo
curl -sSLo /etc/yum.repos.d/vscode.repo https://packages.microsoft.com/yumrepos/vscode/config.repo
# Installing the base desktop, just the minimal stuff becuase I dont need all the stock apps gnome comes with
rpm-ostree install gnome-shell gnome-terminal nautilus code-insiders microsoft-edge-dev
