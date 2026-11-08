#!/bin/sh
set -e
. ./.env
sshpass -p "$DEPLOY_PASSWORD" rsync -az ./dist/ "$DEPLOY_USER@$DEPLOY_HOST:/srv/portal/"
