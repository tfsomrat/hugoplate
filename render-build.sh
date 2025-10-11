# save as render-build.sh and make sure it's executable
hugo version # Output the OLD version
if [[! -f $XDG_CACHE_HOME/hugo]]; then 
  echo "...Downloading HUGO" 
  mkdir -p ~/tmp 
  wget -P ~/tmp https://github.com/gohugoio/hugo/releases/download/v0.151.0/hugo_extended_0.151.0_Linux-64bit.tar.gz 
  cd ~/tmp
  echo "...Extracting HUGO" 
  tar -xzvf hugo_extended_0.151.0_Linux-64bit.tar.gz
  echo "...Moving HUGO"
  mv hugo $XDG_CACHE_HOME/hugo  
  cd $HOME/project/src # Make sure we return to where we were
else 
  echo "...Using HUGO from build cache"
fi

$XDG_CACHE_HOME/hugo version # Output the NEW version
$XDG_CACHE_HOME/hugo --gc --minify`