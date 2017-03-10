# SYNOPSIS

Sparrowdo module to run goss scenarios.

# Travis build status

[![Build Status](https://travis-ci.org/melezhik/sparrowdo-goss.svg)](https://travis-ci.org/melezhik/sparrowdo-goss)


# INSTALL

    $ panda install Sparrowdo::Goss

# USAGE

Here are few examples.

Pass goss ymal as string:

    $ cat sparrowfile

    module_run 'Goss', 'mysql checks', << q:to/HERE/;
      port:
        tcp:3306:
          listening: true
          ip:
          - 127.0.0.1
      service:
        mysql:
          enabled: true
          running: true
      process:
        mysqld:
          running: true
    HERE


Use your favorite templater:

    $ cat mysql.goss.yaml

      port:
        tcp:{{port}}:
          listening: true

    $ cat sparrowfile

    use Template::Mustache;

    module_run 
    'Goss', 
    'mysql tcp port check',  
    Template::Mustache.render('mysql.goss.yaml'.IO.slurp, {  port => '3306' })


# Author

Alexey Melezhik

# See also

[goss](https://github.com/aelsabbahy/goss)

