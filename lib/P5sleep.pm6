use v6.c;
unit module P5sleep:ver<0.0.2>;

proto sub sleep(|) is export {*}
multi sub sleep()         { CORE::<&sleep>() }
multi sub sleep($seconds) {
    my $then = now;
    CORE::<&sleep>($seconds.Int);
    (now - $then).Int
}

=begin pod

=head1 NAME

P5sleep - Implement Perl 5's sleep() built-in

=head1 SYNOPSIS

  use P5sleep; # exports sleep()

=head1 DESCRIPTION

This module tries to mimic the behaviour of the C<sleep> of Perl 5 as closely as
possible.

=head

=head1 AUTHOR

Elizabeth Mattijsen <liz@wenzperl.nl>

Source can be located at: https://github.com/lizmat/P5sleep . Comments and
Pull Requests are welcome.

=head1 COPYRIGHT AND LICENSE

Copyright 2018 Elizabeth Mattijsen

Re-imagined from Perl 5 as part of the CPAN Butterfly Plan.

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
