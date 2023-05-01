#!/usr/bin/perl

require("./math.pl");

sub run_average {
	print "Average of ". join(", ", @_) . ": " . average(@_) . "\n";
}

sub run_factorial {
	my $number = $_[0];
	print "$number! = " . factorial($number) . "\n";
}

sub run_gcd {
	my $a = $_[0];
	my $b = $_[1];
	print "gcd($a, $b) = " . gcd($a, $b) . "\n";
}

sub run_lcm {
	print "lcm(" . join(", ", @_) . ") = " . lcm(@_) . "\n";
}

run_average(12, 30, 53, 18, 76, 92, 45);

run_factorial(17);

run_gcd(-56, 72);

run_lcm(2, 3, 4, 5, 7);
