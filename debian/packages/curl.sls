include:
  - debian/packages/ca-certificates

curl:
  pkg.installed:
    - require:
      - pkg: ca-certificates
