# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'Error::Pure module for simple print instead die.';
author 'Michal Špaček <skim@cpan.org>';
license 'bsd';
name 'Error-Pure-NoDie';
requires 'Error::Pure::Utils' => 0.09;
requires 'Exporter' => 0;
requires 'List::MoreUtils' => 0;
requires 'Readonly' => 0;
requires 'perl' => '5.6.2';
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=Error-Pure-NoDie';
resources 'homepage' => 'https://github.com/tupinek/Error-Pure-NoDie';
resources 'repository' => 'git://github.com/tupinek/Error-Pure-NoDie';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.05;
test_requires 'IO::Scalar' => 0;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.03';

# Run.
WriteAll();
