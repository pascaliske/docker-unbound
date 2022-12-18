#!/bin/sh
# -*- coding: utf-8 -*-

# dynamically set port from environment variable
# shellcheck disable=SC2016
envsubst '$UNBOUND_PORT' < /etc/unbound/unbound.conf.tpl > /etc/unbound/unbound.conf

# exec container command
exec "$@"
