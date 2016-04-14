# PURPOSE:
# triggers reboot if one is pending
# can be disabled with hiera override
#
# HIERA DATA:
# profile::reboot::disable_pending_reboot: (true|false)
#
# HIERA EXAMPLE:
# profile::reboot::disable_pending_reboot: true
#
# MODULE DEPENDENCIES:
# puppet module install puppetlabs-reboot

class profile_reboot {
  # HIERA LOOKUP:
  $disable_pending_reboot =
    hiera('profile::reboot::disable_pending_reboot', false)
  # HIERA LOOKUP VALIDATION:
  validate_bool($disable_pending_reboot)

  # PUPPET CODE:
  # Reboot if not disabled in heira
  unless $disable_pending_reboot {
    reboot { 'pending reboot detected':
      when  => pending,
      apply => finished,
    } # end of reboot type
  } # end of unless

}
