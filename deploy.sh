#!/bin/bash

acorn build -t ghcr.io/randall-coding/acorn/jenkins && \
acorn push ghcr.io/randall-coding/acorn/jenkins && \
acorn run -n jenkins ghcr.io/randall-coding/acorn/jenkins