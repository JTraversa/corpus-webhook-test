FROM busybox:1.36
WORKDIR /www
COPY index.html .
EXPOSE 8080
# DELIBERATE SABOTAGE (health-probe drill): the image builds fine and then
# the process dies instantly. The deploy must report FAILED, not succeeded.
CMD ["sh", "-c", "echo 'boom: this build is deliberately broken'; exit 1"]
