python3-jinja2:
{%- if grains['os_family'] == 'Debian' %}
  {%- if grains['os'] == 'Ubuntu' and grains['osrelease_info']|list < [18, 4] %}
  pip.installed:
    - name: Jinja2 == 2.10.1
  {%- else %}
  pkg.installed{% if grains['os_family'] == 'RedHat' %}:
    - name: python36-jinja
    {%- endif %}
  {%- endif %}
{%- endif %}
