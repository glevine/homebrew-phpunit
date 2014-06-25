homebrew-phpunit
================
### Why?
If your PHP application meets all of these criteria...

* It is a legacy PHP application.
* You are unable to use a dependency manager, like [Composer](https://getcomposer.org/).
* You are maintaining multiple versions of your application.
* Your tests were written for different versions of [PHPUnit](http://phpunit.de/) and each version of your application that you are maintaining must be run against a particular version of PHPunit.

...then this tap might be for you.

### What?
These brews will allow you to install different versions of PHPUnit on your system in parallel. You can run one version of your application against PHPUnit 3.7 and another against PHPUnit 4.1.

The latest patch release for each version of PHPUnit is supported.

```
PHPUnit 4.1 => 4.1.3
PHPUnit 4.0 => 4.0.20
PHPUnit 3.7 => 3.7.37
```

No versions prior to PHPUnit 3.7 are supported. These brews are dependent on PHAR and PHPUnit introduced PHAR support in version 3.7.

### How?
`brew tap glevine/phpunit`

Install the versions of PHPUnit that you care about...

```
brew install phpunit37
brew install phpunit41
```

Run a specific version of PHPUnit for your application...

```
cd path/to/your/app/tests
phpunit37
...
cd path/to/your/app/tests
phpunit41
```

The latest and greatest stable version of PHPUnit is also aliased to `phpunit`. So, you can run PHPUnit x.y by either `phpunitxy` or `phpunit`.

### This is what you wanted?

Honestly, why aren't you using Composer? Just do whatever you need to do to adopt it already! Seriously, [go get it](https://getcomposer.org/)!

### Not what you wanted?

```
brew untap glevine/phpunit
brew cleanup
```

To reclaim hard drive space, you may still want to clean your Homebrew cache to remove versions of PHPUnit that were installed.
