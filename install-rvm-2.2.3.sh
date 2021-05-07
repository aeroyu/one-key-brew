brew install rbenv/tap/openssl@1.0
brew link openssl@1.0
export LDFLAGS="-L/usr/local/opt/openssl@1.0/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.0/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.0/lib/pkgconfig"
export PATH="/usr/local/opt/openssl@1.0/bin:$PATH"

brew install mysql@5.7
brew link mysql@5.7 --force
#brew unlink imagemagick
brew install imagemagick@6
brew link imagemagick@6 --force
brew install v8
brew install v8-315
brew install icu4c

#\curl -sSL https://get.rvm.io | bash -s stable
#source ~/.bashrc
rvm reinstall 2.2.3 --with-zlib-dir=$(brew --prefix zlib) --with-openssl-dir=/usr/local/opt/openssl@1.0 --with-openssl-lib=/usr/local/opt/openssl@1.0/lib --with-openssl-include=/usr/local/opt/openssl@1.0/include --with-opt-dir=/usr/local/opt/openssl@1.0  --rubygems 2.6.8   --force

gem install therubyracer -v '0.12.3' -- --with-v8-dir=/usr/local/opt/v8@3.15
gem install libv8 -v '3.16.14.17' -- --with-system-v8
#gem install workflow_engine-0.2.0.gem
#gem install pmt_libs-0.1.0.gem
