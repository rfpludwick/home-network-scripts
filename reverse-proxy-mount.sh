#!/usr/bin/env bash

set -e

if ! mountpoint -q /mnt/nas/reverse_proxy/; then
    mount /mnt/nas/reverse_proxy/
    service nginx restart
fi