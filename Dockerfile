FROM eclipse-mosquitto:2.0.15

LABEL org.opencontainers.image.source https://github.com/EHMRS/mosquitto

VOLUME ["/mosquitto/config"]

USER 1001

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]