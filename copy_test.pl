#!/usr/bin/perl

@an_array = (0, 1, 2, 3, 4);
@an_array_copy = @an_array;

%a_hash = ("zero", 0, "one", 1, "two", 2);
%a_hash_copy = %a_hash;

push(@an_array_copy, 5);
$an_array_copy[1] = 53;
$a_hash_copy{"two"} = 7;

print "\@an_array: @an_array\n";
print "\@an_array_copy: @an_array_copy\n";

print "\n\$a_hash{\"two\"}: $a_hash{'two'}\n";
print "\$a_hash_copy{\"two\"}: $a_hash_copy{'two'}\n";
