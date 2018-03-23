#!/usr/bin/env bash

set -x
echo "XXX install.sh"
injected_dir=$1
cp -rf ${injected_dir} $JBOSS_HOME/extensions

echo Start EAP in admin only mode and run some arbitrary command prior to the image service starting.
/opt/eap/bin/standalone.sh --admin-only
wait 10

echo jboss-cli.sh to run script
/opt/eap/bin/jboss-cli.sh --connect --file=actions.cli
