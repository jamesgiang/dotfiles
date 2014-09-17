for file in ~/.{path,bash_prompt,exports,aliases,git-completion}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
