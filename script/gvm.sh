#!/usr/bin/env bash
# -*- coding: utf-8 -*-

[ -r "script/bootstrap.sh" ] && source "script/bootstrap.sh"

gvm pkgset list | grep -q "${GVM_NAME}"
response=$?

if [[ ! "${response}" -eq '0' ]]; then
    gvm pkgset create "${GVM_NAME}"
fi

gvm pkgset use "${GVM_NAME}"
gvm linkthis

mkdir -p "${GOPATH}/src"
mkdir -p "${GOPATH}/pkg"
mkdir -p "${GOPATH}/bin"
