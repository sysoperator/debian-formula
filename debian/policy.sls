policy-rc.d-enable:
  file.managed:
    - name: /usr/sbin/policy-rc.d
    - contents: |
        #!/bin/sh
        echo "All runlevel operations denied by policy" >&2
        exit 101
    - mode: 755

policy-rc.d-disable:
  file.absent:
    - name: /usr/sbin/policy-rc.d
