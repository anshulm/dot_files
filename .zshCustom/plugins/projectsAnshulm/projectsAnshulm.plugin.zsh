#iba
iba () {
cd ~/../../pdata/Projects/TW/iba/$1 && $2;
}
_iba() {
_files -W ~/../../pdata/Projects/TW/iba -/;
}
compdef _iba iba

#McK Lean IT ipad app
mck () {
cd ~/../../pdata/Projects/TW/L2TT/L2TT/$1 && $2;
}
_mck() {
_files -W ~/../../pdata/Projects/TW/L2TT/L2TT -/;
}
compdef _mck mck

bsp () {
cd ~/../../pdata/BS/Projects/railsApp$1 && $2;
}

_bsp() {
_files -W ~/../../pdata/BS/Projects/railsApp -/;
}
compdef _bsp bsp
