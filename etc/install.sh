#!/bin/bash

${STEAMCMDDIR}/steamcmd.sh +force_install_dir ${APPDIR} \
  +login anonymous \
  +app_update 258550 validate \
  +quit

{ \
  echo '@ShutdownOnFailedCommand 1'; \
  echo '@NoPromptForPassword 1'; \
  echo 'force_install_dir '"${APPDIR}"''; \
  echo 'login anonymous'; \
  echo 'app_update '"${rust}"''; \
  echo 'quit'; \
} > "${APPDIR}/${APP}_update.txt"

echo "${STEAMCMDDIR}/steamcmd.sh +runscript ${APPDIR}/${APP}_update.txt" > ${APPDIR}/${APP}_update.sh
chmod +x ${APPDIR}/${APP}_update.sh

mv "${HOMEDIR}/config_server.txt" ${APPDIR}/.

echo './RustDedicated -batchmode "$(< config_server.txt)"' > ${APPDIR}/startserver.sh

chmod +x ${APPDIR}/startserver.sh
