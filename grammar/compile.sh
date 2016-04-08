
if [ $2 == "local" ] ; then 
 GF_COMMAND=~/Library/Haskell/bin/gf
 GF_FOLDER=~/Library/Haskell/share/ghc-7.10.3-x86_64/gf-3.7.1/www/grammars/
else 
 GF_COMMAND=~/.cabal/bin/gf 
 GF_FOLDER=~/.cabal/share/gf-3.7.1/www/grammars/
fi ;

$GF_COMMAND -make -path=core:datetime:domain/$1 ApplicationJSON.gf ApplicationGer.gf ApplicationEng.gf
cp Application.pgf $GF_FOLDER
