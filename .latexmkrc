$silent = 1;
$aux_dir = 'tmp';
$pdf_mode = 4;

# If your TeX environment does not provide working LuaLaTeX, uncomment this:
# $pdf_mode = 1;

ensure_path('TEXINPUTS', 'tex//:');

# The aux_dir will be created but its subdirectories won't (because latex sucks ass).
# latexmk does solve this by detecting the error and creating the subdirectories between runs (https://man.archlinux.org/man/latexmk.1). However, this won't work when running with --verbose.
# We could also run latexmk several times (because there is some kind of limit so not all directories are created on the first run) ...
# Let's just fix that manually. Be sure to include all the nested chapters etc. in the script:
system("./setup.sh $aux_dir");

@default_files = ('thesis.tex', 'abstract.tex', 'abstract-cs.tex');
