class roles::kinetix {
    package { 'git':
        ensure => 'installed',
    }
    class { '::php':
      ensure       => latest,
      manage_repos => true,
      fpm          => true,
      dev          => true,
      composer     => true,
      pear         => true,
      phpunit      => false,
      extensions   => {
          curl => {},
          pdo => {},
          mysql => {},
          mbstring => {},
      }
    }
}
