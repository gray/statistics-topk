use strict;
use warnings;
use ExtUtils::MakeMaker;

my %conf = (
    NAME           => 'Statistics::TopK',
    AUTHOR         => 'gray <gray@cpan.org>',
    LICENSE        => 'perl',
    VERSION_FROM   => 'lib/Statistics/TopK.pm',
    ABSTRACT_FROM  => 'lib/Statistics/TopK.pm',
    BUILD_REQUIRES => { 'Test::More' => 0.98, },
    META_MERGE     => {
        resources => {
            repository => 'http://github.com/gray/statistics-topk',
        },
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'Statistics-TopK-*' },
);

unless (eval { ExtUtils::MakeMaker->VERSION(6.46) }) {
    delete $conf{META_MERGE};
}

WriteMakefile(%conf);
