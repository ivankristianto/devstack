# Calibreworks Devstack

Calibreworks Devstack is an open source [Vagrant](https://www.vagrantup.com) box with a LAMP stack. Calibreworks Devstack is [MIT Licensed](https://github.com/ivankristianto/devstack/blob/master/LICENSE).

## Overview

### The Purpose of Calibreworks Devstack

The primary goal of Calibreworks Devstack is to provide an approachable development environment with a server configuration common for the developer.

Calibreworks Devstack is ideal for developing PHP and Nodejs Web.

### How to Use Calibreworks Devstack

#### Software Requirements

Calibreworks Devstack requires recent versions of both Vagrant and VirtualBox to be installed.

[Vagrant](https://www.vagrantup.com) is a "tool for building and distributing development environments". It works with [virtualization](https://en.wikipedia.org/wiki/X86_virtualization) software such as [VirtualBox](https://www.virtualbox.org/) to provide a virtual machine sandboxed from your local environment.

#### Calibreworks Devstack as a MAMP/XAMPP Replacement

Once Vagrant and VirtualBox are installed, download or clone Calibreworks Devstack and type `vagrant up` to automatically build a virtualized Ubuntu server on your computer containing everything needed to develop a Web Application.

Multiple projects can be developed at once in the same environment.

The `www\devstack` directories are shared with the virtualized server.

These shared directories allow you to work, for example, in `www/devstack/yourwebsite` in your local file system and have those changes immediately reflected in the virtualized server's file system and http://local.dev/yourwebsite/. Likewise, if you `vagrant ssh` and make modifications to the files in `/var/www/`, you'll immediately see those changes in your local file system.

### The First Vagrant Up

1. Start with any local operating system such as Mac OS X, Linux, or Windows.
1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
1. Install [Vagrant](https://www.vagrantup.com/downloads.html)
    * `vagrant` will now be available as a command in your terminal, try it out.
    * ***Note:*** If Vagrant is already installed, use `vagrant -v` to check the version. You may want to consider upgrading if a much older version is in use.
1. Clone or extract the Calibreworks Devstack project into a local directory
    * `git clone git@github.com:ivankristianto/devstack.git devstack`
1. In a command prompt, change into the new directory with `cd devstack`
1. Start the Vagrant environment with `vagrant up`
    * Be patient as the magic happens. This could take a while on the first run as your local machine downloads the required files.
    * Watch as the script ends, as an administrator or `su` ***password may be required*** to properly modify the hosts file on your local machine.
1. Add to your /etc/hosts files: 192.168.6.5 local.dev

Fancy, yeah?

### What Did That Do?

The first time you run `vagrant up`, a packaged box containing a basic virtual machine is downloaded to your local machine and cached for future use. The file used by Calibreworks Devstack contains an installation of Ubuntu 14.04 and is about 332MB.

After this box is downloaded, it begins to boot as a sandboxed virtual machine using VirtualBox. Once booted, it runs the provisioning script included with Calibreworks Devstack. This initiates the download and installation of around 100MB of packages on the new virtual machine.

The time for all of this to happen depends a lot on the speed of your Internet connection. If you are on a fast cable connection, it will likely only take several minutes.

On future runs of `vagrant up`, the packaged box will be cached on your local machine and Vagrant will only need to apply the requested provisioning.

#### MySQL Root
* User: `root`
* Pass: `root`

### What do you get?

A bunch of stuff!

1. [Ubuntu](http://www.ubuntu.com/) 14.04.3 LTS (Trusty Tahr)
1. [WP-CLI](http://wp-cli.org/) (master branch)
1. [apache2](https://httpd.apache.org/)
1. [mysql](https://www.mysql.com/) 5.5.x
1. [php5](http://php.net/) 5.5.x
1. [memcached](http://memcached.org/)
1. PHP [memcache extension](https://pecl.php.net/package/memcache)
1. PHP [xdebug extension](https://pecl.php.net/package/xdebug/)
1. PHP [imagick extension](https://pecl.php.net/package/imagick/)
1. [PHPUnit](https://phpunit.de/)
1. [git](http://git-scm.com/)
1. [subversion](https://subversion.apache.org/)
1. [Composer](https://github.com/composer/composer)
1. [phpMyAdmin](http://www.phpmyadmin.net/) (multi-language)
1. [Opcache Status](https://github.com/rlerdorf/opcache-status)
1. [NodeJs](https://nodejs.org/)
1. [grunt-cli](https://github.com/gruntjs/grunt-cli)

## Copyright / License

Calibreworks Devstack is copyright (c) 2014-2015, the project under the [MIT License](LICENSE).
