package Bencher::Scenario::Tie::Array;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark the overhead of tied array',
    modules => {
        'Tie::Array::NoOp' => {},
    },
    participants => [
        {name => 'push-pop-tied-100k'  , code_template => 'tie my @ary, "Tie::Array::NoOp"; for (1..100_000) { push @ary, 1; pop @ary }'},
        {name => 'push-pop-notie-100k' , code_template => 'my @ary; for (1..100_000) { push @ary, 1; pop @ary }'},
        # XXX other operations
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

=cut
