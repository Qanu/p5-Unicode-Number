package Unicode::Number::Result;
{
  $Unicode::Number::Result::VERSION = '0.001';
}

use strict;
use warnings;

sub _new {
	my ($class, $str) = @_;
	bless \$str, $class;
}

sub to_string {
	my ($self) = @_;
	return "$$self";
}
sub to_numeric {
	my ($self) = @_;
	return 0+$$self;
}

sub to_bigint {
	my ($self) = @_;
	use DDP; p $self->to_string;
	my $bigint;
	eval {
		require Math::BigInt;
		$bigint = Math::BigInt->new($self->to_string);
	} or die $@;
	$bigint;
}

1;

# ABSTRACT: one line description

__END__

=pod

=encoding UTF-8

=head1 NAME

Unicode::Number::Result - one line description

=head1 VERSION

version 0.001

=head1 SYNOPSIS

  use My::Package; # TODO

  print My::Package->new;

=head1 DESCRIPTION

TODO

=head1 AUTHOR

Zakariyya Mughal <zmughal@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Zakariyya Mughal.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
