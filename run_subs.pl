#!/usr/bin/perl

require("./math.pl");

@numbers = (12, 30, 53, 18, 76, 92, 45);
print "Average of @numbers: " . average(@numbers) . "\n";

print "17! = " . factorial(17) . "\n";

print "gcd(-56, 72): " . gcd(-56, 72) . "\n";