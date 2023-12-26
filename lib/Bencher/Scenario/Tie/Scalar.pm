package Bencher::Scenario::Tie::Scalar;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark the overhead of tied scalar',
    modules => {
        'Tie::Scalar::NoOp' => {},
    },
    participants => [
        {name => 'read-tied-100k'  , code_template => 'tie my $var, "Tie::Scalar::NoOp"; my $var2; for (1..100_000) { $var2 = $var }'},
        {name => 'read-notie-100k' , code_template => 'my $var; my $var2; for (1..100_000) { $var2 = $var }'},
        {name => 'write-tied-100k' , code_template => 'tie my $var, "Tie::Scalar::NoOp"; for (1..100_000) { $var = 42 }'},
        {name => 'write-notie-100k', code_template => 'my $var; for (1..100_000) { $var = 42 }'},
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

=cut
