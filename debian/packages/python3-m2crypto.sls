python3-m2crypto:
{% if grains['os_family'] == 'Debian' %}
  {% if grains['os'] == 'Ubuntu' and grains['osrelease_info'] < (18, 4) %}
  pip.installed:
    - name: M2Crypto
  {% else %}
  pkg.installed
  {% endif %}
{% endif %}
