#!/usr/bin/env bash

# system tools
rpm-ostree install -y doas
rpm-ostree install -y cronie

# libvirt
rpm-ostree install -y libvirt
rpm-ostree install -y virt-manager
rpm-ostree install -y swtpm
rpm-ostree install -y virt-viewer
rpm-ostree install -y virt-top
