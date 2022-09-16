FROM eclipse-mosquitto:2.0.15

VOLUME ["/mosquitto/config"]

USER 1001

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]