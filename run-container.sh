#!/bin/bash
if [ "$TERM_PROGRAM" == "vscode" ]; then
	echo "must run outside of vscode"
	exit 1
fi

docker run -ti --sig-proxy=false \
--mount type=bind,source=/home/mako/ws/github/imx8mminievk,target=/workspaces/imx8mminievk \
--mount type=volume,src=vscode,dst=/vscode \
--cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
--workdir /workspaces/imx8mminievk \
vsc-imx8mminievk-5fbada13fae072d738c3cf5997610867-uid \

