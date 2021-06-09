include:
  - debian/packages/ca-certificates

apt-transport-https:
  pkg.installed:
    - require:
      - pkg: ca-certificates
