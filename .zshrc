# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"



# --- THEME ---
ZSH_THEME="gnzh"



# --- OhMyZSH standard options ---

# Preferred editor for local and remote sessions
EDITOR="vim"
VISUAL="vim"
GIT_EDITOR="vim"



# --- PLUGINS ---
plugins=(
	git
	zsh-autosuggestions
  z
)

source $ZSH/oh-my-zsh.sh



# --- ALIASES ---
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias gs='git status'
alias ga='git add --all'
alias gc='git commit'
alias gppb='git pull --rebase'
alias prettygit='git log --all --decorate --oneline --graph'
alias cmb='cmake -Bbuild -DCMAKE_EXPORT_COMPILE_COMMANDS=1 && cmake --build build'
alias ktm="exit"
alias dormi="gnome-screensaver-command -l"
alias muori="sudo shutdown now"
alias install="sudo apt install"
alias update="sudo apt update && sudo apt dist-upgrade"
alias mux="tmuxinator"
alias meheref="rm -rf"
alias c="clear"
alias casa="cd && c"



# --- To manage dotfiles with github ---
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'



# --- ROS2 (Humble) ---

# ROS ALIASES
# alias roscdhome="roscd && cd .."

# To use Turtlebot 3 simulator with NAV2
export TURTLEBOT3_MODEL=waffle
export GAZEBO_MODEL_PATH=/home/luca/Workspace/ros2_ws/src/turtlebot3_simulations/turtlebot3_gazebo/models

# Load the ROS workspace
source /opt/ros/humble/setup.zsh

# My current ROS workspace
source ~/Workspace/ros2_ws/install/setup.zsh

# COLCON_CD
source /usr/share/colcon_cd/function/colcon_cd.sh
export _colcon_cd_root=~/Workspace/ros2_ws/

# COLCON tab completion
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh

# Useful to start gazebo
# export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

# When launching rtabmap_ros's nodes, if you have the error error while loading 
# shared libraries..., try ldconfig or add the next line at the end of 
# your ~/.bashrc to fix it:
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/ros/noetic/lib/x86_64-linux-gnu



# --- OpenBLAS ---
# To allow to use openBLAS to OverFeat
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/OpenBLAS/lib/



# --- CUDA ---
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64
export PATH=/usr/local/cuda/bin:$PATH



# --- pyenv ---
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
