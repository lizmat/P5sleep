use v6.*;
use Test;
use P5sleep;

plan 3;

ok defined(::('&sleep')),         'is &sleep imported?';
ok !defined(P5sleep::{'&sleep'}), 'is &sleep externally NOT accessible?';

is sleep(2), 2, 'did we sleep long enough';

# vim: expandtab shiftwidth=4
