#!/bin/bash

php update.php

git commit -a -m "`git status --porcelain | sed '{:q;N;s/\n/, /g;t q}' | sed 's/^ *//g'`"
git push
