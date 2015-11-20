
# User specific aliases and functions
# alias ssh
alias sshdb02='ssh arch@cq01-arch-db02.cq01'
alias sshtesting='ssh work@cp01-testing-ksarch02.cp01'
alias top="htop -u $(whoami)"

# 设置256色显示
[ -z "$TMUX" ] && export TERM=xterm-256color
# 添加默认编辑器
export EDITOR=vim

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# jumbo 相关配置文件
[[ -s "/home/users/wuzhengwei01/.jumbo/etc/bashrc" ]] && source "/home/users/wuzhengwei01/.jumbo/etc/bashrc"

# 设置系统变量
PS1='\[\e[1;33m\]\u\[\e[1;32m\]\[\e[31m\]:\W\[\e[31m\]/\[\e[37m\] '
PATH=~/download/shunit2-2.1.6/src:$PATH     # 添加shunit2到系统路径中
PATH=~/.bin:$PATH						    # 自定义的相关脚本路径
# 将/etc/manpages.config中的/usr/share/man 替换为/usr/share/man/zh_CN即可将man手册置为中文版，若恢复英文手册，将manpaces.config替换为manpages.config.bak即可   

echo "===========================================================tmux session============================================================"
echo -e "\n"
tmux ls
echo -e "\n"
