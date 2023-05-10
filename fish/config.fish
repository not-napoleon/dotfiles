fundle plugin 'tuvistavie/fish-ssh-agent'

fundle init

set -x EDITOR nvim

set -x JAVA_HOME /Users/marktozzi/.sdkman/candidates/java/current
# set -x RUNTIME_JAVA_HOME /Users/marktozzi/.sdkman/candidates/java/current

set -x JAVA8_HOME /Users/marktozzi/.sdkman/candidates/java/8.0.292.hs-adpt
set -x JAVA11_HOME /Users/marktozzi/.sdkman/candidates/java/11.0.11.hs-adpt
set -x JAVA16_HOME /Users/marktozzi/.sdkman/candidates/java/16.0.1.hs-adpt
set -x JAVA17_HOME /Users/marktozzi/.sdkman/candidates/java/17.0.1-oracle
set -x JAVA20_HOME /Users/marktozzi/.sdkman/candidates/java/20.0.1-open/

# set -x JAVA10_HOME /Library/Java/JavaVirtualMachines/jdk-10.0.2.jdk/Contents/Home/
# set -x JAVA12_HOME /Library/Java/JavaVirtualMachines/jdk-12.jdk/Contents/Home
# set -x JAVA13_HOME /Library/Java/JavaVirtualMachines/jdk-13.0.1.jdk/Contents/Home
# set -x JAVA14_HOME /Library/Java/JavaVirtualMachines/jdk-14.jdk/Contents/Home
# set -x JAVA15_HOME /Users/marktozzi/Library/Java/JavaVirtualMachines/openjdk-15.0.1/Contents/Home 
# set -x JAVA7_HOME /Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
# set -x JAVA8_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home


# Rally wants pyenv
set -gx PYENV_SHELL fish
source '/usr/local/Cellar/pyenv/2.2.5/libexec/../completions/pyenv.fish'
command pyenv rehash 2>/dev/null
function pyenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case rehash shell
    source (pyenv "sh-$command" $argv|psub)
  case '*'
    command pyenv "$command" $argv
  end
end

fish_add_path /Users/marktozzi/.pyenv/shims
