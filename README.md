[![Actions Status](https://github.com/lizmat/P5sleep/workflows/test/badge.svg)](https://github.com/lizmat/P5sleep/actions)

NAME
====

Raku port of Perl's sleep() built-in

SYNOPSIS
========

    use P5sleep; # exports sleep()

DESCRIPTION
===========

This module tries to mimic the behaviour of Perl's `sleep` built-in as closely as possible in the Raku Programming Language.

ORIGINAL PERL DOCUMENTATION
===========================

    sleep EXPR
    sleep   Causes the script to sleep for (integer) EXPR seconds, or forever
            if no argument is given. Returns the integer number of seconds
            actually slept.

            May be interrupted if the process receives a signal such as
            "SIGALRM".

                eval {
                    local $SIG{ALARM} = sub { die "Alarm!\n" };
                    sleep;
                };
                die $@ unless $@ eq "Alarm!\n";

            You probably cannot mix "alarm" and "sleep" calls, because "sleep"
            is often implemented using "alarm".

            On some older systems, it may sleep up to a full second less than
            what you requested, depending on how it counts seconds. Most
            modern systems always sleep the full amount. They may appear to
            sleep longer than that, however, because your process might not be
            scheduled right away in a busy multitasking system.

            For delays of finer granularity than one second, the Time::HiRes
            module (from CPAN, and starting from Perl 5.8 part of the standard
            distribution) provides usleep(). You may also use Perl's
            four-argument version of select() leaving the first three
            arguments undefined, or you might be able to use the "syscall"
            interface to access setitimer(2) if your system supports it. See
            perlfaq8 for details.

            See also the POSIX module's "pause" function.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/P5sleep . Comments and Pull Requests are welcome.

COPYRIGHT AND LICENSE
=====================

Copyright 2018, 2019, 2020, 2021 Elizabeth Mattijsen

Re-imagined from Perl as part of the CPAN Butterfly Plan.

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

