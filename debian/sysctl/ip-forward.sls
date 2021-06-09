net.ipv4.ip_forward:
  sysctl.present:
    - value: 1
    - config: /etc/sysctl.d/50-ip-forward.conf
