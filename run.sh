export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export PATH="/opt/homebrew/opt/bison/bin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
source ~/.zshrc

read -p "Enter file: " x

WINEPREFIX=~/wineprefix64 wine $x 2>&1 | grep -i -e "error:" -e "err:" -e "fixme:" -e "Warning:" -e "warning:" > issues-run.log

# Check the exit status
if [ $? -eq 1 ]; then
    echo "The command returned an error status of 1." >> issues-run.log
    # Optionally, you can log the output of the command
    echo "Output: $(cat issues-run.log)" >> issues-run.log
fi
