#!/usr/bin/perl

use warnings;
use strict;


sub send_param
{
	my $p = shift;
	my $v = shift;
	my $cmd = "amidi -p hw:2,0 -S 'B0 $p $v'";
	print $cmd,"\n";
	system($cmd);
}

sub load_patch
{
	my $fh = shift;


}


#18,19,20,21,22,23 - op mul

#24,25,26,27,28,29 - op attack
#30,31,32,33,34,35 - op decay
#36,37,38,39,40,41 - op sustain
#42,43,44,45,46,47 - op release

#48,49,50,51,52,53 - op feedback


my $patch_cmds =  {
	'a' => 3,
};

for(my $i = 0 ;$i< 6; $i++)
{
	my $oi = $i+1;
	$patch_cmds->{'op'.$oi.'.v'} = 12+$i;
	$patch_cmds->{'op'.$oi.'.m'} = 18+$i;
	$patch_cmds->{'op'.$oi.'.a'} = 24+$i;
	$patch_cmds->{'op'.$oi.'.d'} = 30+$i;
	$patch_cmds->{'op'.$oi.'.s'} = 36+$i;
	$patch_cmds->{'op'.$oi.'.r'} = 42+$i;
	$patch_cmds->{'op'.$oi.'.f'} = 48+$i;
}

my $patch = $ARGV[0];

use Data::Dumper;
#print STDERR Dumper($patch_cmds);

open(PATCH,'<',$patch) || die 'no file';

while(my $linha = <PATCH>) {
	if($linha =~ m/^\s*(\w[\.\d\w]*)=(\d+)\s*$/){
		my $cmd = $1;
		my $v   = sprintf('%02X',$2);
		if(defined $patch_cmds->{$cmd} ){
			my $reg = sprintf('%02X',$patch_cmds->{$cmd});
			send_param($reg,$v);
#			print "C: $reg V: $v\n";
		}
		
	}
}

#send_param('7B','00');
close PATCH;

