#!/usr/bin/perl

sub average {
	my $num_items = scalar @_;
	my $sum = 0;

	foreach $number (@_) {
		$sum += $number
	}

	return $sum / $num_items;
}

sub factorial {
	$number = abs($_[0]);
	$factorial = 1;

	while($number > 0) {
		$factorial *= $number;
		$number--;
	}

	return $factorial;
}

sub gcd {
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

1;
