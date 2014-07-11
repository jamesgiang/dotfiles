for file in ~/.{path,bash_prompt,exports,aliases}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
