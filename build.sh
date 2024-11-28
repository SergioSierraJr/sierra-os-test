#!/bin/sh

# I dont think I need this because I wont do any piping but ill keep it just incase
set -ouex pipefail

# Just to fetch repos
RELEASE="$(rpm -E %fedora)"

curl -sSLo /etc/yum.repos.d/insiders-fast.repo https://packages.microsoft.com/config/fedora/$RELEASE/insiders-fast.repo

# Installing the base desktop, just the minimal stuff becuase I dont need all the stock apps gnome comes with
rpm-ostree gnome-shell gnome-terminal nautilus vscode-insiders
