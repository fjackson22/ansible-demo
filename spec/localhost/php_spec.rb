require 'spec_helper'

describe package('php7.0') do
  it { should be_installed }
end

describe package('php-fpm') do
  it { should be_installed }
end

describe file('/etc/nginx/sites-available/default') do
  its(:content) { should contain('fastcgi-php.conf')  }
end

describe file('/var/www/html/php-example/index.php') do
  it { should exist }
end
