# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'
# Time-stamp: "2000-12-08 21:43:26 MST"
######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..4\n"; }
END {print "not ok 1\n" unless $loaded;}
use File::HomeDir;
$loaded = 1;
print "ok 1\n";

print "File::HomeDir version: $File::HomeDir::VERSION\n";
###########################################################################
$| = 1;

my $hd = home();
print "Your home dir is ", defined($hd) ? $hd : '[undef]', "\nok 2\n";

my $ru = home('root');
print "root's home dir is ", defined($ru) ? $ru : '[undef]', "\nok 3\n";

my @c = ('0' .. '9', 'a' .. 'z');
srand;
my $luser = join '', 'x', map $c[rand @c], 0 .. 9; 

my $mo = home($luser);
print "$luser\'s home dir is ", defined($mo) ? $mo : '[undef]', "\nok 4\n";

__END__
