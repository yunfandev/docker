FROM traefik

# https://stackoverflow.com/questions/49476452/traefik-forwarding-to-a-host-and-overriding-ip
# Fix nssswitch not looking at hosts file (See https://github.com/traefik/traefik/pull/6012)
RUN echo "hosts: files dns" > /etc/nsswitch.conf