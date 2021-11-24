/etc/sysctl.d/10-disable-ipv6.conf:
  file.managed:
    - source: salt://debian/sysctl/files/sysctl.d/10-disable-ipv6.conf
    - mode: 755
    - user: root
    - watch_in:
      - cmd: sysctl -p /etc/sysctl.d/10-disable-ipv6.conf

sysctl -p /etc/sysctl.d/10-disable-ipv6.conf:
  cmd.wait
