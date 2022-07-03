python3-openssl:
  pkg.installed{% if salt['grains.get']('os_family') == 'RedHat' %}:
    - name: python36-pyOpenSSL
  {% if salt['grains.get']('os') == 'CentOS' %}
    - require:
      - pkg: epel-release

epel-release:
  pkg.installed
  {% endif %}
{% endif %}
