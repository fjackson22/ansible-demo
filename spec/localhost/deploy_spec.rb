require 'spec_helper'

describe file('/var/www/html/index.html') do
  its(:content) { should match /<title>2048<\/title>/ }
end
