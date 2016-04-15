## PURPOSE:
triggers reboot if one is pending
can be disabled with hiera override

## HIERA DATA:
profile::reboot::disable_pending_reboot: (true|false)

## HIERA EXAMPLE:
profile::reboot::disable_pending_reboot: true

## MODULE DEPENDENCIES:
puppet module install puppetlabs-reboot

## USAGE:

For installation, include this in your Puppetfile:
```
mod "puppetlabs-reboot",     '1.2.1'

mod 'profile_reboot',
  :git => 'https://github.com/firechiefs/profile_reboot',
  :ref => '1.0.0'
```
usage in manifests:
```
class role::*rolename* {
  include profile_reboot
}
```
