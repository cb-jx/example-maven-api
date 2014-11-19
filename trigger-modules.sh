#! /bin/bash
MODULES=( impl api )
for module in $MODULES;do
echo "Trigger" >> ${module}/TRIGGER.txt
git add  ${module}/TRIGGER.txt;done
git commit -m "trigger jenkins build" . && git push
