use v6;

unit module Sparrowdo::Goss;

use Sparrowdo;

our sub tasks ($title,$yaml) {

  task-run $title, 'goss', %( 
    action  => 'validate' , 
    goss => $yaml 
  );
} 


