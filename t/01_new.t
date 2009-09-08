use strict;
use warnings;
use Test::More tests => 2;
use Statistics::TopK;

my $counter = Statistics::TopK->new(10);
isa_ok($counter, 'Statistics::TopK', 'new');
can_ok('Statistics::TopK', qw( add top counts ));
