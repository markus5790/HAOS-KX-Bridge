ARG KX_BRIDGE_IMAGE=gitea.it-drui.de/viewit/kx-bridge:latest
FROM ${KX_BRIDGE_IMAGE}
LABEL io.hass.type="app"
LABEL org.opencontainers.image.title="KX-Bridge Home Assistant App"
COPY run.sh /ha-run.sh
RUN chmod 0755 /ha-run.sh
ENTRYPOINT ["/ha-run.sh"]
