#!/bin/sh

mkdir -p $HOME/.ssh
echo -e "$SSH_KEY" > $HOME/.ssh/id_rsa
chmod 600 $HOME/.ssh/id_rsa
set -eu
sh -c "rsync -avzP -e 'ssh -i $HOME/.ssh/id_rsa -o StrictHostKeyChecking=no' $GITHUB_WORKSPACE/$SOURCE_PATH $REMOTE_USER@$HOST:$REMOTE_PATH"
