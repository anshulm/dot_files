iba () {
cd ~/../../pdata/Projects/TW/iba/$1 && $2;
}
_iba() {
_files -W ~/../../pdata/Projects/TW/iba -/;
}
compdef _iba iba