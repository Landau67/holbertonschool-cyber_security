#!/bin/bash
grep -vE '^\s*#|^\s*$' /etc/ssh/sshd_config
