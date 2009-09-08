use strict;
use warnings;
use Test::More tests => 3;
use Statistics::TopK;

{
    my $counter = Statistics::TopK->new(10);
    is_deeply([$counter->top], [], 'stream containing no elements');
}

{
    my $counter = Statistics::TopK->new(10);
    for my $elem ( ('a') x 100 ) {
        $counter->add($elem);
    }
    is_deeply(
        [$counter->top], ['a'], 'stream containing one distinct element'
    );
}

{
    my $counter = Statistics::TopK->new(10);
    for my $elem (1 .. 100) {
        $counter->add($elem);
    }
    is_deeply(
        [ sort { $a <=> $b } $counter->top ],
        [91 .. 100],
        'stream containing all distinct elements'
    );
}
