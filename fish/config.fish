fish_add_path /Users/marktozzi/.local/bin
set -x EDITOR nvim

set -x JAVA_HOME /Users/marktozzi/.sdkman/candidates/java/current

# set -x JAVA8_HOME /Users/marktozzi/.sdkman/candidates/java/8.0.292.hs-adpt
# set -x JAVA11_HOME /Users/marktozzi/.sdkman/candidates/java/11.0.11.hs-adpt
# set -x JAVA16_HOME /Users/marktozzi/.sdkman/candidates/java/16.0.1.hs-adpt
set -x JAVA17_HOME /Users/marktozzi/.sdkman/candidates/java/17.0.7-tem/
set -x JAVA20_HOME /Users/marktozzi/.sdkman/candidates/java/20.0.1-open/

if test -e /usr/local/bin/brew
  set brew_path /usr/local/bin/brew
else if test -e /opt/homebrew/bin/brew
  set brew_path /opt/homebrew/bin/brew
end

eval "$($brew_path shellenv)"

fish_add_path $(brew --prefix python)/libexec/bin
fish_add_path /Users/marktozzi/.pyenv/shims
fish_vi_key_bindings

