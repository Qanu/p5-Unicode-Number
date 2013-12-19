use Test::More;

use_ok 'Unicode::Number';

my $uni = Unicode::Number->new();

my $ns = $uni->list_number_systems();

use DDP; p $ns;

is( @$ns, 91, 'count of number systems' );

is( $ns->[0]->name, 'Aegean');
is( $ns->[0]->_id, 1);
is( $ns->[0]->convertible_in_both_directions, 1);

is( $ns->[-1]->name, 'Western');
is( $ns->[-1]->_id, 120);
is( $ns->[-1]->convertible_in_both_directions, 0);

done_testing;
