include:
  - debian/packages/isc-dhcp-client

dhclient-nodnsupdate:
  file.managed:
    - name: /etc/dhcp/dhclient-enter-hooks.d/nodnsupdate
    - source: salt://debian/dhclient/files/dhclient-enter-hooks.d/nodnsupdate
    - mode: 755
    - user: root
    - require:
      - pkg: isc-dhcp-client
