## Setup Octopress
    git clone git://github.com/imathis/octopress.git octopress
    cd octopress
    git checkout d684a65 # optional

## Adjust files
    sed -i "s/end/  gem 'therubyracer', '~> 0.12'\nend/" Gemfile
    sed -i "s/end/  gem 'mini_magick', '~> 4.2'\nend/" Gemfile

## Install
    bundle install
    be rake install[cats]
    cp .themes/cats/plugins/* plugins/
    be rake generate && be rake preview
