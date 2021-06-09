ca-certificates:
  pkg.installed

update-ca-certificates:
  cmd.wait:
    - name: update-ca-certificates
