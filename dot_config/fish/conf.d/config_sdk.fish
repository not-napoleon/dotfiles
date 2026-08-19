# NOTE: this is configured here so it runs before fonf.d/sdk.fish

set -l BREW $(type -p brew)

# sdkman
set -g __sdkman_custom_dir $($BREW --prefix SDKMAN-cli)/libexec
