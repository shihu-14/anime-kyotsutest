use Cwd qw(getcwd);

my $project_dir = getcwd();
my $out_dir = "$project_dir/out";
my $cache_dir = "$out_dir/.texlive-cache";

mkdir $out_dir unless -d $out_dir;
mkdir $cache_dir unless -d $cache_dir;

$ENV{"TEXMFVAR"} = $cache_dir;
$ENV{"TEXMFCACHE"} = $cache_dir;

$pdf_mode = 4;
$out_dir = "out";
$aux_dir = "out";
$lualatex = "lualatex -interaction=nonstopmode -halt-on-error -file-line-error %O %S";
