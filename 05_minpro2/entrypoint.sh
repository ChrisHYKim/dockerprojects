#!/bin/bash

mkdir /run/php-fpmm
/usr/sbin/php-fpm

/usr/sbin/httpd -D FRREGROUND