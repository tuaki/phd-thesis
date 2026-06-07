$silent = 1;
$aux_dir = 'tmp';
$pdf_mode = 4;

# If your TeX environment does not provide working LuaLaTeX, uncomment this:
# $pdf_mode = 1;

ensure_path('TEXINPUTS', 'tex//:');

# The aux_dir will be created but its subdirectories won't (because latex sucks ass).
# latexmk does solve this by detecting the error and creating the subdirectories between runs (https://man.archlinux.org/man/latexmk.1). However, this won't work when running with --verbose.
# A solution would be to create them manually:
# system("mkdir -p \"$aux_dir/chapters\" \"$aux_dir/papers\"");
# But, there are also the nested chapters ... that would be too much work, let's just not do that.
# Just make sure to run latexmk several times because there is some kind of limit so not all directories are created on the first run ...

@default_files = ('thesis.tex');
