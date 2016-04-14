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
```
class role::*rolename* {
  include profile_reboot
}
```
