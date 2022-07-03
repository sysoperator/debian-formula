conntrack:
  pkg.installed{% if grains['os_family'] == 'RedHat' %}:
    - name: conntrack-tools
{% endif %}
