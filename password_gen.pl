#!/usr/bin/perl

use strict;
use warnings;
use feature qw (say);

my $length;
my $random;
my $range = 75;    # All charcters included

# Arrays of characters to generate password

my @generated;
my @lowers   = qw(a b c d e f g h i j k l m n o p q r s t u v w x y z);
my @uppers   = qw(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z);
my @specials = qw(! @ $ % ^ & * - _ + = [ { ] } : ; ' " < > ? ` ~);
my @all      = ( @lowers, @uppers, @specials );

if ( $#ARGV < 0 ) {
    say "Must supply length to be created";
    exit(-1);
}

$length = $ARGV[0];

foreach ( 1 .. $length ) {
    $random = int( rand($range) - 1 );
    push( @generated, $all[$random] );
}

say "Password generated is ", join( '', @generated );
