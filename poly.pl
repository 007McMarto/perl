#!/usr/bin/perl

use strict;
use warnings;

sub arrayPoly {
	
	my @input = @_;
	print "Size of array: " . ($#input + 1) . "\n"; 
	my $term = '';
	for (my $i=$#input; $i >= 0; $i--) {
		$term = $term . " + " . $input[$i] . "x" . $i;
	}

	return $term;
}


sub hashPoly {

	my %hash = @_;
	my $term = '';
	for my $i (reverse sort keys %hash) {
		$term = $term . " + " . $hash{$i} . "x" . $i;
	}
	return $term;
}

my @testArray = (5,7,2);
print "Initial array has size " . ($#testArray + 1) . "\n";
print arrayPoly(@testArray) . "\n";

my %testHash = ( 
	2 => 2,
	0 => 5,
	1 => 7
);

print hashPoly(%testHash) . "\n";

