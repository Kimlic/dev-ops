#!/bin/bash
find /tmp -user jenkins -print0 | xargs -0 rm -rf