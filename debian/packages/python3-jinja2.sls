python3-jinja2:
{% if grains['os_family'] == 'Debian' %}
  {% if grains['os'] == 'Ubuntu' and grains['osrelease_info'] < (18, 4) %}
  pip.installed:
    - name: Jinja2 == 2.10.1
  {% else %}
  pkg.installed
  {% endif %}
{% endif %}
