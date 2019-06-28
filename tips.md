# Tips

1. Remove autocomplete url in Chrome on Mac machine

    Select the url in address bar, press fn+SHIFT+Delete


2. Switch display on Mac

    Use cliclick to mimic mouse click to switch the focus between different display.

    Or

    Just use Alfred to switch apps and ensure each app only have one window

3. Install python via Pyenv on Mojave

    env CPPFLAGS="-I/usr/local/opt/zlib/include" pyenv install 3.7.1
    
    Or
    
    Ensure the lines are copied to .zshrc
    
    export LDFLAGS="-L/usr/local/opt/readline/lib"
    
    export CPPFLAGS="-I/usr/local/opt/readline/include"
    
4. Switch focus between VSCode and Terminal

    Ctrl + `

5. CommandLineTools error
   
   xcode-select --install

6. Change Mac Brew 

cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin git://mirrors.ustc.edu.cn/homebrew-core.git
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bash_profile
source ~/.bash_profile
brew update

7. Replace string in files

   grep --null -lr "old_string" | xargs --null sed -i 's/old_string/new_string/g'
