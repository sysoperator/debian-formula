include:
  - debian/packages/gcc
  - debian/packages/g++

python3-dev:
  pkg.installed:
    - require:
      - pkg: gcc
      - pkg: g++
