require 'redmine'

# This is a horible HACK... but I don't know the official way to add this
# plugin's paths to the ruby $LOAD_PATH... so since this works... we use
# it!
lib = File.expand_path '../lib', __FILE__
$LOAD_PATH.unshift lib unless $LOAD_PATH.include? lib

require_dependency 'katex/hooks'

Redmine::Plugin.register :katex do
  name 'Katex plugin'
  author 'Stephen Gaito'
  description 'This Redmine plugin installs the KaTeX Mathematics typesetting javascript system'
  version '0.0.1'
  url 'https://github.com/stephengaito/redmine_plugin_katex'
  author_url 'https://github.com/stephengaito'
  directory __dir__
end

