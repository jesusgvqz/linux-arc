#!/usr/bin/env bash
echo "hay internet" && curl https://www.google.com &> /dev/null || echo "no hay internet"
