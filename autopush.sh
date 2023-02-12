#!/bin/bash

time=`date +%Y/%m/%d-%H:%M:%S`

git add *
git commit -m "push by script @ $time"
git push origin main

echo "done with push @ $time"
