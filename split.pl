#!/bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);

my ($dict, $word) = @ARGV;

if (not defined $word) {
	die "Need dict and word\n";
}

print "Reading dict....\n";
my @dict;
open (FILE, "<$dict") or die "Can't open dict\n";
while (<FILE>) {
	push @dict, $_;
}
close FILE;
print "Dict with " . $#dict . " lines read\n";

print "Splitting $word....\n";
my $w='';
my @final;

foreach my $c (split //, $word) {
	# print "Next char is " . $c . "\n";
	$w = $w . $c;
	# print "Checking word $w\n";
	my @result = grep (/^$w$/, @dict);
	if ($#result < 0) {
		# print "Nothing found\n";
	} else {
		# print ">>>>> Found @result";
		push @final, @result;
		$w='';
	}; 
}

print @final;



