#!/usr/bin/perl

package NumArrays;

sub all_nums_are_equal {
	if(scalar @_ < 1) {
		# False
		return 0;
	}

	my $first = shift(@_);

	while(scalar @_ > 0) {
		my $number = shift(@_);
		
		if($number != $first) {
			# False
			return 0;
		}
	}

	# True
	return 1;
}

sub min_index {
	my $length = scalar @_;

	if($length < 1) {
		return -1;
	}

	my $min_index = 0;
	my $min_num = $_[$min_index];

	for($i=1; $i<$length; $i++) {
		my $number = $_[$i];

		if($number < $min_num) {
			$min_index = $i;
			$min_num = $number;
		}
	}

	return $min_index;
}

1;
