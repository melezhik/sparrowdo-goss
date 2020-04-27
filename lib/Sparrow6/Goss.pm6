use v6;

unit module Sparrow6::Goss;

use Sparrow6::DSL;

our sub tasks ( %args ) {

  if %args<action> && %args<action> eq 'install' {

     task-run 'install goss binary', 'goss', %( install_path => %args<install_path> || '/usr/bin' )
 
  } else {
     task-run %args<title>, 'goss', %( 
      action  => 'validate', 
      goss => %args<yaml>,
      install_path => %args<install_path>||'/usr/bin'
    );
  }

} 


