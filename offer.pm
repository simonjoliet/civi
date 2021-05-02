#########################################################################
# offer.pm                                                              #
# Developed by SJO                                                      #
#########################################################################
 
package offer;
use strict;
 
sub new {
        my ($class,$url,$title,$date,$desc) = @_;
        my $this = {};
        bless($this, $class);
        $this->{URL}    = $url;
        $this->{TITLE}  = $title;
        $this->{DATE}   = $date;
        $this->{DESC}   = $desc;
        return $this;
}
1;
 
sub setUrl {
 
        my ($this, $url) = @_;
        $this->{URL} = $url;
 
}
 
sub setTitle {
        my ($this, $title) = @_;
        $this->{TITLE} = $title;
}
 
sub setDate {
 
        my ($this, $date) = @_;
        $this->{DATE} = $date;
}
 
sub toString {
        my ($this) = @_;
        return "\tTITLE=>".$this->{TITLE}."\n";
}