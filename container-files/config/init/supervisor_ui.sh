#!/bin/bash
UI_DIR=/supervisor-ui
/bin/cp -rf $UI_DIR/status.html $STATUS_FILE
sed -ri "s/\<9100\>/${SHELLINABOX_PORT}/g" $STATUS_FILE
sed -ri ':a;N;$!ba;s/\n/ /g' $STATUS_FILE
sed -ri 's|alt="Supervisor status" />|alt="Supervisor status" /><div><h2>Container hostname: '$HOSTNAME'</h2></div>|g' $STATUS_FILE
