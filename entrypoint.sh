#!/bin/sh


mkdir -p ~/.ssh
echo -e "$SSH_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
set -eu
cat ~/.ssh/id_rsa 
sh -c "rsync -avzP -e 'ssh -o StrictHostKeyChecking=no' $GITHUB_WORKSPACE/$SOURCE_PATH $REMOTE_USER@$HOST:$REMOTE_PATH"
