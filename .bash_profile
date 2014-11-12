for file in ~/.{path,bash_prompt,exports,aliases,git-completion,inputrc}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
