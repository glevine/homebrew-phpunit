require 'formula'

class Phpunit37 < Formula
  homepage 'http://phpunit.de/manual/3.7/en/'
  url 'https://phar.phpunit.de/phpunit-3.7.37.phar'
  sha1 '6eee1c707a3511a9326cb545a569e6870e116820'

  def install
    libexec.install "phpunit-#{version}.phar"
    sh = libexec + "phpunit37"
    sh.write("#!/usr/bin/env bash\n\n/usr/bin/env php -d allow_url_fopen=On -d detect_unicode=Off #{libexec}/phpunit-#{version}.phar $*")
    chmod 0755, sh
    bin.install_symlink sh
  end
end
