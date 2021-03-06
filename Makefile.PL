#!perl

use strict;
use warnings;
use inc::Module::Install;

name 'HTML-Mason-Site';
author 'Hans Dieter Pearcey <hdp@cpan.org>';
all_from;

build_requires 'Test::More' => 0;

requires 'Class::Accessor'             => 0;
requires 'Class::Accessor::Class'      => 0;
requires 'File::Find::Rule'            => 0;
requires 'File::Modified'              => 0;
requires 'File::MMagic'                => 0;
requires 'HTML::Mason'                 => '1.34'; # get_server_port
requires 'HTML::Mason::FakeApacheHandler' => 0;
requires 'YAML::Syck'                  => 0;
requires 'Getopt::Long::Descriptive'   => 0;
requires 'MIME::Types'                 => 0;
requires 'Net::Server'                 => 0;
requires 'Object::Array'               => 0;
requires 'Apache::Session::Wrapper'    => 0.29; # fixes blocking bug
requires 'HTTP::Server::Simple::Mason' => '0.09';

install_script 'script/msite';
WriteAll;
