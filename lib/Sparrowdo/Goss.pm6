use v6;

unit module Sparrowdo::Goss;

use Sparrowdo;

our sub tasks (%args) {

  task-run %args<title>, 'goss', %( 
    action  => 'validate', 
    goss => %args<yaml> 
  );
} 


