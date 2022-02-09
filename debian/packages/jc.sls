jc:
{%- if grains['os_family'] == 'Debian' %}
  {% if grains['os'] == 'Ubuntu' and grains['osrelease_info'] <= (20, 4) %}pip{% else %}pkg{% endif %}.installed
{%- endif %}
