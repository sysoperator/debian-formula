net.core.somaxconn:
  sysctl.present:
    - value: 1024
    - config: /etc/sysctl.d/50-net-core-somaxconn.conf
