### Compilation

Make sure you have `latexmk` installed. By default, LuaLaTeX is used. If that's not an option (but we strongly suggest it is), see `.latexmkrc`. Then run:
```bash
latexmk
```

If something goes wrong, remove the auxiliary files (`/aux`) and try again with the `--verbose` flag to enable logs:
```bash
latexmk --verbose
```
Or just inspect the log files in `/aux`.

### LaTeX Workshop integration

If using LaTeX Workshop in VS Code, add this line to your `settings.json`:
```json
"latex-workshop.latex.auxDir": "aux"
```
And run this if the auxiliary directories are not created automatically:
```bash
./setup.sh aux
```
You might also need to fix the recipe to use `latexmk` instead of whatever else is set by default. But it might work out of the box, who knows.
