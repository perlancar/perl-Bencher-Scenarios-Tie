package Bencher::Scenario::Tie::Hash;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark the overhead of tied hash',
    modules => {
        'Tie::Hash::NoOp' => {},
    },
    participants => [
        {name => 'keys-tied-100k'  , code_template => 'tie my %hash, "Tie::Hash::NoOp"; my $var2; for (1..100_000) { $var2 = keys %hash }'},
        {name => 'keys-notie-100k' , code_template => 'my %hash; my $var2; for (1..100_000) { $var2 = keys %hash }'},
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

=cut
