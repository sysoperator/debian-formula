python3-openssl:
  pkg.installed{% if salt['grains.get']('os_family') == 'RedHat' %}:
    - name: python{% if grains['osmajorrelease'] < 8 %}36{% endif %}-pyOpenSSL
  {% if salt['grains.get']('os') == 'CentOS' %}
    - require:
      - pkg: epel-release

epel-release:
  pkg.installed
  {% endif %}
{% endif %}
