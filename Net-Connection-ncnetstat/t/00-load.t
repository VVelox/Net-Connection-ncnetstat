#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Net::Connection::ncnetstat' ) || print "Bail out!\n";
}

diag( "Testing Net::Connection::ncnetstat $Net::Connection::ncnetstat::VERSION, Perl $], $^X" );
