kirill:
  user.present:
    - shell: /bin/zsh
    - home: /home/kirill
    - sudoer: True

# vundle
#https://github.com/gmarik/vundle.git:
#  git.latest:
#    - target: /home/kirill/.vim/bundle/vundle
#    - require:
#        - pkg: git
#  cmd.run:
#    - name: vim
#    - user: kirill

# clone oh-my-zsh
https://github.com/styts/oh-my-zsh.git:
  git.latest:
    - target: /home/kirill/.oh-my-zsh
    - require:
        - pkg: git

# symlink zshrc
/home/kirill/.zshrc:
  file.symlink:
    - target: /home/kirill/.dotfiles/zshrc
    - force: True
    - user: kirill

# symlink vimrc
/home/kirill/.vimrc:
  cmd.watch:
    - name: sh <(curl https://j.mp/spf13-vim3 -L)
    - user: kirill
  file.symlink:
    - target: /home/kirill/.spf13-vim/.vimrc
    - force: True
    - user: kirill

/home/kirill/.vimrc.local:
  file.symlink:
    - target: /home/kirill/.dotfiles/vimrc.local
    - force: True
    - user: kirill

https://github.com/spf13/spf13-vim.git:
  git.latest:
    - target: /home/kirill/.spf13-vim
    - require:
        - pkg: git

https://github.com/styts/dotfiles.git:
  git.latest:
    - target: /home/kirill/.dotfiles
    - require:
        - pkg: git
