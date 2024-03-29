#!perl
use 5.006;
use strict;
use warnings;
use Test::More;

my $extra_tests=0;

BEGIN {
    use_ok( 'Net::Connection::ncnetstat' ) || print "Bail out!\n";
}

my $output_raw=`lsof -i UDP -i TCP -n -l -P 2> /dev/null`;
if (
	( $? eq 0 ) ||
	(
	 ( $^O =~ /linux/ ) &&
	 ( $? eq 256 )
	 )
	){
	$extra_tests=1;
	my $worked=0;
	my $ncnetstat;
	my $tb;
	eval{
		$ncnetstat=Net::Connection::ncnetstat->new();
		$tb=$ncnetstat->run;
		$worked=1;
	};
	ok( $worked eq '1', 'run test') or diag("run died with ".$@);
}else{
	diag('No lsof installed on this system or "lsof -i UDP -i TCP -n -l -P" does not work');
}

my $tests_ran=1+$extra_tests;
done_testing($tests_ran);
