group{ 'puppet': ensure  => present }

node jenkins {
  include jenkins
  class{'jenkins':}
  jenkins::plugin {'git' : version => '1.1.26' }
  jenkins::plugin {'mercurial' : version => '1.42' }
  jenkins::plugin {'gradle' : version => '1.21' }

  package{['mercurial','git']:
    ensure  => present
  }
  include jdk
}
