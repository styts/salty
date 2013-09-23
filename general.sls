vim-enhanced:
  pkg:
    - installed

zsh:
  pkg:
    - installed

git:
  pkg:
    - installed

kirill:
  user.present:
    - shell: /bin/zsh
    - home: /home/kirill

https://github.com/styts/oh-my-zsh.git:
  git.latest:
    - target: /home/kirill/.oh-my-zsh
    - require:
        - pkg: git

/home/kirill/.zshrc:
  file.symlink:
    - target: /home/kirill/.oh-my-zsh/zshrc
    - force: True
    - user: kirill
