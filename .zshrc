source ~/.zsh.d/prompt

export LANG=ja_JP.UTF-8
export SSL_CERT_FILE=/usr/local/etc/openssl/certs/cacert.pem


## 履歴の保存先
HISTFILE=$HOME/.zsh-history
## メモリに展開する履歴の数
HISTSIZE=100000
## 保存する履歴の数
SAVEHIST=100000

## 補完機能の強化
autoload -U compinit
compinit

## コアダンプサイズを制限
limit coredumpsize 102400
## 出力の文字列末尾に改行コードが無い場合でも表示
unsetopt promptcr
## Emacsライクキーバインド設定
bindkey -e

## 色を使う
setopt prompt_subst
## ビープを鳴らさない
setopt nobeep
## 内部コマンド jobs の出力をデフォルトで jobs -l にする
setopt long_list_jobs
## 補完候補一覧でファイルの種別をマーク表示
setopt list_types
## サスペンド中のプロセスと同じコマンド名を実行した場合はリジューム
setopt auto_resume
## 補完候補を一覧表示
setopt auto_list
## 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
## cd 時に自動で push
setopt auto_pushd
## 同じディレクトリを pushd しない
setopt pushd_ignore_dups
## ファイル名で #, ~, ^ の 3 文字を正規表現として扱う
setopt extended_glob
## TAB で順に補完候補を切り替える
setopt auto_menu
## zsh の開始, 終了時刻をヒストリファイルに書き込む
setopt extended_history
## =command を command のパス名に展開する
setopt equals
## --prefix=/usr などの = 以降も補完
setopt magic_equal_subst
## ヒストリを呼び出してから実行する間に一旦編集
setopt hist_verify
## ファイル名の展開で辞書順ではなく数値的にソート
setopt numeric_glob_sort
## 出力時8ビットを通す
setopt print_eight_bit
## ヒストリを共有
setopt share_history
## 補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu select=1
## 補完候補の色づけ
#eval `dircolors`
export ZLS_COLORS=$LS_COLORS
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
## ディレクトリ名だけで cd
setopt auto_cd
## カッコの対応などを自動的に補完
setopt auto_param_keys
## ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash
## スペルチェック
setopt correct
## {a-c} を a b c に展開する機能を使えるようにする
setopt brace_ccl
## Ctrl+S/Ctrl+Q によるフロー制御を使わないようにする
setopt NO_flow_control
## コマンドラインの先頭がスペースで始まる場合ヒストリに追加しない
setopt hist_ignore_space
## コマンドラインでも # 以降をコメントと見なす
setopt interactive_comments
## ファイル名の展開でディレクトリにマッチした場合末尾に / を付加する
setopt mark_dirs
## history (fc -l) コマンドをヒストリリストから取り除く。
setopt hist_no_store
## 補完候補を詰めて表示
setopt list_packed
## 最後のスラッシュを自動的に削除しない
setopt noautoremoveslash

<<<<<<< Updated upstream
=======
alias ssh_masaki925_root='ssh -i ~/.ssh/root.fulsat9.pem root@masaki925.com'
alias ssh_masaki925_m-iwamoto='ssh -i ~/.ssh/id_rsa m-iwamoto@masaki925.com'
alias ssh_web02_fulsat9_m-iwamoto='ssh -i ~/.ssh/id_rsa m-iwamoto@web02.fulsat9.com'
alias ssh_web02_masaki925_m-iwamoto="ssh -i ~/.ssh/m-iwamoto.web02.masaki925.com m-iwamoto@219.94.252.110"
alias random_str='LC_CTYPE=C tr -c -d "[:graph:]" < /dev/urandom | head -c 12'
#alias random_str='LC_CTYPE=C tr -c -d "[:alnum:]" < /dev/urandom | head -c 12'
alias ll='ls -lF' alias la='ls -A'
alias l='ls -CF'
alias bi='bundle install'
alias be='bundle exec'
alias bes='bundle exec spring'
alias bowi='bower install'
alias fs='foreman start'
alias rs='rails server'
alias rsd='rails server --debugger'
alias git_rebase_master='git rebase master'
alias vim_lo="vim -O config/locales/en.yml config/locales/ja.yml"
alias start_redis="launchctl start homebrew.mxcl.redis"
alias stop_redis="launchctl stop homebrew.mxcl.redis"

# //// for Ruby version controll >>>
#PATH=$HOME/.rbenv/bin:$PATH
#eval "$(rbenv init -)"
#export RBENV_ROOT=/usr/local/opt/rbenv
>>>>>>> Stashed changes

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
# <<< for Ruby version controll ////

# //// for JavaScript version controll >>>
PATH=$PATH:/usr/local/Cellar/node/0.8.22/bin
PATH=$PATH:/usr/local/share/npm/bin
# <<< for JavaScript version controll ////

PATH=$PATH:/usr/local/Cellar/s3cmd/1.0.1/bin/

# ctl+u to be bound to backward-kill-line rather than kill-whole-line
bindkey \^U backward-kill-line
# ctl+w back also to '/'
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

if [ $TERM != 'screen' ]; then screen; fi

export GREP_OPTIONS="--color=auto"

