#!/usr/bin/perl

require("./num_array_util.pl");

sub average {
	my $num_items = scalar @_;
	my $sum = 0;

	foreach $number (@_) {
		$sum += $number
	}

	return $sum / $num_items;
}

sub _euclid_gcd {
	my $a = abs($_[0]);
	my $b = abs($_[1]);

	if($b > $a) {
		# Switch a and b.
		my $tmp = $a;
		$a = $b;
		$b = $tmp;
	}

	for(;;) {
		my $r = $a % $b;

		if($r == 0) {
			return $b;
		}

		$a = $b;
		$b = $r;
	}
}

sub factorial {
	my $number = abs($_[0]);
	my $factorial = 1;

	while($number > 0) {
		$factorial *= $number;
		$number--;
	}

	return $factorial;
}

sub gcd {
	my $a = shift(@_);

	while(scalar @_ > 0) {
		my $b = shift(@_);
		$a = _euclid_gcd($a, $b);
	}

	return $a;
}

sub lcm {
	# Calculates the least common multiple of an array of numbers.
	# https://en.wikipedia.org/wiki/Least_common_multiple#Using_a_simple_algorithm
	if(scalar @_ < 1) {
		return -1;
	}

	my @init_nums = ();

	foreach my $num (@_) {
		push(@init_nums, abs($num));
	}

	my @numbers = @init_nums;

	until(all_nums_are_equal(@numbers)) {
		my $min_index = min_index(@numbers);
		$numbers[$min_index] += $init_nums[$min_index];
	}

	return $numbers[0];
}

1;
