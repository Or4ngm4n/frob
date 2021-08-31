#!c:\Perl64\bin\perl.exe
    use LWP::UserAgent;
	print q[
        _   ,_,   _
       / `'=) (='` \
      /.-.-.\ /.-.-.\ 
      `      "      `  Or4nG.M4n @@interestedz
	
	];
	open (USERFILE, "<urls.txt") || die "[-] Can't open the List of URLs file or the file Not Exist !";
    @WORDS = <USERFILE>;
    close USERFILE;
    foreach my $us (@WORDS) {
    chomp $us;
    $urls = $us;
    my $UserAgent = new LWP::UserAgent;
    my $response = $UserAgent->get("http://".$urls."/robots.txt",);
    if ($content = $response->content=~ /User-agent: */ )
    {
    print "Found :".$urls." );\n";
	open(FOUND, ">>rob.txt");
	print FOUND $urls."\n";
	close FOUND;
    }else{
    print "Not Found :".$urls."\n";
	
    }
    }
