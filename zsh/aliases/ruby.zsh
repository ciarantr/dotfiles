# Configure ruby & gem path
# Configure ruby path
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# Configure ruby gem colorls
#Enable tab completion for flags
source $(dirname $(gem which colorls))/tab_complete.sh