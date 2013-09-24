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

# required to link the .zshrc
https://github.com/styts/dotfiles.git:
  git.latest:
    - target: /home/kirill/.dotfiles
    - user: kirill
    - require:
        - pkg: git
