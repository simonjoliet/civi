#!/usr/bin/perl
 
#########################################################################
# civi.pl                                                              #
# Developed by SJO                                                      #
#########################################################################
 
use strict;
use warnings;
use offer;
 
my $urlPrefix="civiweb.com/FR/offre-liste/secteur-activite/";
my $urlSuffix=".aspx";
my $toExec = "";
my @activities;
@activities=("28","31","30","29","32","187","164","24");

my @offers;
my @rawResults;

print "getting the content";
foreach my $activity (@activities) {
   $toExec = "curl ".$urlPrefix.$activity.$urlSuffix." 2>&1";
   $rawResults[@rawResults] = exec($toExec);
}

print "extracting the content";
foreach my $rawResult (@rawResults) {
    $toExec = "echo ".$rawResult." | grep -A 16 \"article class=\";";
}