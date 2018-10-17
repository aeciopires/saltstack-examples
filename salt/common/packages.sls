# State Name: common_packages
# Goal: install bellow packages
common_packages:
  pkg.installed:
    - pkgs:
      - {{ pillar['package_name'] }}
