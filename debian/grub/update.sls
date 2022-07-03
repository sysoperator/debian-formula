grub-update:
  cmd.wait:
{%- if salt['grains.get']('os_family') == 'Debian' %}
    - name: update-grub2
{%- elif salt['grains.get']('os_family') == 'RedHat' %}
    - name: 'grub2-mkconfig -o $(readlink -f /etc/grub2.cfg)'
{%- endif %}
