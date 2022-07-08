FROM gonnaflick/steamcmd:root

LABEL maintainer="a338906@uach.mx": \
      name="Rust Server" \
      version="1.0"

# Game values
ENV APPID 258550
ENV APP rust
ENV APPDIR ${HOMEDIR}/${APP}server

# Get the manual installation file and server script.
RUN   mkdir -p ${APPDIR} \
	&& wget https://raw.githubusercontent.com/gonnaflick/Rust-Game-Server/main/etc/install.sh -O "${HOMEDIR}/install.sh" \
	# Server values added
	& wget https://raw.githubusercontent.com/gonnaflick/Rust-Game-Server/main/etc/config_server.txt -O "${HOMEDIR}/config_server.txt" \
	&& chmod +x ${HOMEDIR}/install.sh \
	&& chown -R "${USER}:${USER}" "${HOMEDIR}/install.sh" "${APPDIR}" "${HOMEDIR}/config_server.txt"

# Switch to user and directory
USER ${USER}
WORKDIR ${HOMEDIR}

CMD ["/bin/bash"]

# Expose ports
EXPOSE 28015/tcp
EXPOSE 28015/udp
EXPOSE 28016/tcp
EXPOSE 28082/tcp
