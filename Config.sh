/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/seifeldinattia/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"



brew install gcc 
brew install make
brew install nasm
brew install zlib 
brew install pkg-config 
brew install libtiff 
brew install libgsm 
brew install libogg 
brew install libvorbis 
brew install theora 
brew install libxslt 
brew install libxkbcommon 
brew install libxcomposite 
brew install libxdamage 
brew install libxinerama 
brew install libxrandr 
brew install libxfixes 
brew install llvm 
brew install bison
brew install wine-stable
brew install winetricks 
brew install samba 
brew install xquartz


winetricks vcrun2010 vcrun2012 vcrun2013 vcrun2015 vcrun2019 dotnet472 dotnet48 winhttp comctl32 d3dx9 dxvk 2>&1 | grep -i -e "error:" -e "err:" -e "fixme:" -e "Warning:" -e "warning:" > issues.log

wineboot -u

WINEARCH=win64 WINEPREFIX=~/.wine64 winecfg
