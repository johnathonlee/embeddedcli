#!/usr/bin/env bash

set -x
echo "XXX install.sh"
injected_dir=$1
cp -rf ${injected_dir} $JBOSS_HOME/extensions


echo jboss-cli.sh to run script
/opt/eap/bin/jboss-cli.sh --file=actions.cli
