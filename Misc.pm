#!/usr/bin/perl

use strict;
use warnings;

use Exporter "import";
our @EXPORT_OK = qw(is_leap_year print_array);

sub is_leap_year {
	my $year = $_[0];
	return ($year%4==0 and $year%100!=0) or $year%400==0;
}

sub print_array {
	my $length = scalar @_;
	for(my $i=0; $i<$length; $i++) {
		print "[$i]: $_[$i]\n";
	}
}

1;
