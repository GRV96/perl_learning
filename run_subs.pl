#!/usr/bin/perl

use strict;
use warnings;

# Add the local directory's absolute path to @INC.
use Cwd qw(abs_path cwd);
use File::Basename "dirname";
use lib dirname(abs_path($0));

use Math qw(average factorial gcd lcm);
use Misc qw(is_leap_year);

sub run_average {
	print "Average of ". join(", ", @_) . ": " . average(@_) . "\n";
}

sub run_factorial {
	my $number = $_[0];
	print "$number! = " . factorial($number) . "\n";
}

sub run_gcd {
	print "gcd(" . join(", ", @_) . ") = " . gcd(@_) . "\n";
}

sub run_is_leap_year {
	my $year = $_[0];
	print "Leap year $year: " . is_leap_year($year) . "\n";
}

sub run_lcm {
	print "lcm(" . join(", ", @_) . ") = " . lcm(@_) . "\n";
}

run_average(12, 30, 53, 18, 76, 92, 45);
print "\n";

run_factorial(17);
run_factorial(18);
run_factorial(19);
run_factorial(20);
run_factorial(21);
print "\n";

run_gcd(56, 72);
run_gcd(-56, 72);
run_gcd(960, 756);
run_gcd(780, -960);
run_gcd(51, 21);
run_gcd(24, 85);
run_gcd(-16, 48, 24);
run_gcd(32, 84, 108);
run_gcd(64, 56, 144, 72);
run_gcd(27, 96, 48, 60);
run_gcd(96, 48, 60);
run_gcd(8, 40, 100);
run_gcd(23);
print "\n";

run_is_leap_year(2004);
run_is_leap_year(2001);
run_is_leap_year(2000);
run_is_leap_year(1999);
run_is_leap_year(1996);
run_is_leap_year(1900);
run_is_leap_year(476);
run_is_leap_year(12);
run_is_leap_year(6);
run_is_leap_year(4);
run_is_leap_year(1);
run_is_leap_year(0);
run_is_leap_year(-1);
run_is_leap_year(-4);
run_is_leap_year(-6);
run_is_leap_year(-12);
run_is_leap_year(-753);
run_is_leap_year(-1900);
run_is_leap_year(-1996);
run_is_leap_year(-1999);
run_is_leap_year(-2000);
run_is_leap_year(-2001);
run_is_leap_year(-2004);
print "\n";

run_lcm(2, 3, 4, 5, 7);
run_lcm(36, 48);
run_lcm(12, 18);
run_lcm(36, 8);
run_lcm(19);
print "\n";
