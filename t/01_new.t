use strict;
use warnings;
use Test::More tests => 2;
use Statistics::Top;

my $counter = Statistics::Top->new;
isa_ok($counter, 'Statistics::Top', 'new');
can_ok('Geo::Coder::Bing', qw( top counts ));
