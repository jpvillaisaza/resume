if (defined $ENV{'VERSION'} && $ENV{'VERSION'} ne '') {
  $version = $ENV{'VERSION'};
} else {
  $version = qx(git log -1 --format=%h);
  $version =~ s/^\s+|\s+$//g;
  $version = "None" unless $version;
}

$xelatex = "xelatex -shell-escape %O '\\def\\version{$version}\\input{%S}'";
