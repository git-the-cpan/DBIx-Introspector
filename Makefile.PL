
# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.020.
use strict;
use warnings;



use ExtUtils::MakeMaker ;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Detect what database you are connected to",
  "AUTHOR" => "Arthur Axel \"fREW\" Schmidt <frioux+cpan\@gmail.com>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "DBIx-Introspector",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "DBIx::Introspector",
  "PREREQ_PM" => {
    "DBI" => "1.628",
    "Moo" => "1.003001"
  },
  "TEST_REQUIRES" => {
    "DBD::SQLite" => "1.4",
    "Test::More" => "0.99",
    "Test::Roo" => "1.002"
  },
  "VERSION" => "0.001005",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "DBD::SQLite" => "1.4",
  "DBI" => "1.628",
  "Moo" => "1.003001",
  "Test::More" => "0.99",
  "Test::Roo" => "1.002"
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



