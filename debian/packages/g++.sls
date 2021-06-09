include:
  - debian/packages/gcc

g++:
  pkg.installed:
    - require:
      - pkg: gcc
