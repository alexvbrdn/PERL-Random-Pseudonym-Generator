my @voyelle = ("a", "e", "i", "o", "u", "au", "ou", "ai", "ei", "eu", "ui", "on", "om", "er", "en", "ion", "ier", "y");
my @consonne = ("z", "r", "t", "y", "p", "qu", "s", "d", "f", "g", "j", "k", "l", "m", "w", "x", "c", "v", "b", "n", "tr", "pr", "dr", "fr", "gr", "vr", "br", "pl", "fl", "cl", "vl", "bl", "ch", " ");

sub syllabe{
	return $consonne[rand($#consonne)].$voyelle[rand($#voyelle)]
}

sub pseudo{
	my $nbr_de_syllabe = rand($_[1]-$_[0])+$_[0];
	my $result;
	for(my $i = 0; $i < $nbr_de_syllabe; $i++){
		$result .= &syllabe()
	}
	$result =~ s/^([a-z])(.*)$/uc($1).($2)/ge;
	$result =~ s/(.)$1+/$1/ge;
	return $result;
}