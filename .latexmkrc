$hash = qx(git log -1 --format=%h);
$hash =~ s/^\s+|\s+$//g;
$hash = "None" unless $hash;

$version = $ENV{'VERSION'} || $hash;

$xelatex = "xelatex -shell-escape %O '\\def\\version{$version}\\input{%S}'";
