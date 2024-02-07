if (defined $ENV{'VERSION'} && $ENV{'VERSION'} ne '') {
  $version = $ENV{'VERSION'};
} elsif (defined $ENV{'GITHUB_SHA'} && $ENV{'GITHUB_SHA'} ne '') {
  $version = substr($ENV{'GITHUB_SHA'}, 0, 7);
} else {
  $version = qx(git log -1 --format=%h);
  $version =~ s/^\s+|\s+$//g;
  $version = "None" unless $version;
}

$xelatex = "xelatex -shell-escape %O '\\def\\version{$version}\\input{%S}'";
