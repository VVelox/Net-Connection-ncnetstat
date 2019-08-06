# About

Provides a enhances colorized netstat like tool that is capable of doing searches.

![ncnetsetstat](ncnetstat.png)

The search criteria can be any of the following.

* CIDR
* port
* host
* PTR
* state
* UID
* username

# Installing

## FreeBSD

    pkg install perl5 p5-App-cpanminus lsof
    cpanm Net::Connection::ncnetstat
    
## Linux

### CentOS

    yum install cpanm lsof
    cpanm Net::Connection::ncnetstat

### Debian

This has been tested as working on Debian 9 minimal.

    apt install perl perl-base perl-modules make cpanminus lsof
    cpanm Net::Connection::ncnetstat
# TODO

* Add support for more collection methods than Net::Connection::lsof

* Support color selection and column ordering.
