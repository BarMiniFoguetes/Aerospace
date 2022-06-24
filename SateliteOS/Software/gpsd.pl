#!/usr/bin/perl

 use Net::GPSD3;
         use Data::Dumper qw{Dumper};
         my $gpsd=Net::GPSD3->new;
         my $poll=$gpsd->poll;
         print Dumper($poll);