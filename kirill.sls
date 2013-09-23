kirill:
  user.present:
    - shell: /bin/zsh
    - home: /home/kirill
    - sudoer: True

# clone oh-my-zsh
https://github.com/styts/oh-my-zsh.git:
  git.latest:
    - target: /home/kirill/.oh-my-zsh
    - user: kirill
    - require:
      - pkg: git
      - user.present: kirill

# symlink zshrc
/home/kirill/.zshrc:
  file.symlink:
    - target: /home/kirill/.dotfiles/zshrc
    - force: True
    - user: kirill
    - require:
        - git.latest: https://github.com/styts/dotfiles.git

## symlink vimrc
#/home/kirill/.vimrc:
#  cmd.wait:
#    - name: sh <(curl https://j.mp/spf13-vim3 -L)
#    - user: kirill
##  file.symlink:
##    - target: /home/kirill/.spf13-vim/.vimrc
##    - force: True
##    - user: kirill
#
#/home/kirill/.vimrc.local:
#  file.symlink:
#    - target: /home/kirill/.dotfiles/vimrc.local
#    - force: True
#    - user: kirill
#    - require:
#        - git.latest: https://github.com/styts/dotfiles.git
#
##https://github.com/spf13/spf13-vim.git:
##  git.latest:
##    - target: /home/kirill/.spf13-vim
##    - user: kirill
##    - require:
##        - pkg: git
#
https://github.com/styts/dotfiles.git:
  git.latest:
    - target: /home/kirill/.dotfiles
    - user: kirill
    - require:
        - pkg: git
