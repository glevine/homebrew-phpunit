require 'formula'

class Phpunit40 < Formula
  homepage 'http://phpunit.de/manual/4.0/en/'
  url 'https://phar.phpunit.de/phpunit-4.0.20.phar'
  sha1 'a2642f82d66c858077530d6fc5fbe1710c685003'

  def install
    libexec.install "phpunit-#{version}.phar"
    sh = libexec + "phpunit40"
    sh.write("#!/usr/bin/env bash\n\n/usr/bin/env php -d allow_url_fopen=On -d detect_unicode=Off #{libexec}/phpunit-#{version}.phar $*")
    chmod 0755, sh
    bin.install_symlink sh
  end
end
