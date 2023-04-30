#!/usr/bin/perl

sub average {
	$num_items = scalar @_;
	$sum = 0;

	foreach $number (@_) {
		$sum += $number
	}

	return $sum / $num_items;
}

1;
