#!/usr/bin/env perl
use strict;
use warnings;

while (my $line = <STDIN>){
  my @chars = split("", $line);

  my $prev = "";
  foreach(@chars){
    #h digraphs ch, zh, sh, eh
    if ($_ eq "h" || $_ eq "H"){
      if ($prev eq "c"){
        print "ч";
      } elsif ($prev eq "C"){
        print "Ч";
      } elsif ($prev eq "z"){
        print "ж";
      } elsif ($prev eq "Z"){
        print "Ж";
      } elsif ($prev eq "s"){
        print "ш";
      } elsif ($prev eq "S"){
        print "Ш";
      } elsif ($prev eq "e"){
        print "э";
      } elsif ($prev eq "E"){
        print "Э";
      }
    } else {
      if ($prev eq "Z"){
        print "З";
      } elsif ($prev eq "z"){
        print "з";
      } elsif ($prev eq "S"){
        print "С";
      } elsif ($prev eq "s"){
        print "с";
      } elsif ($prev eq "C"){
        print "Ц";
      } elsif ($prev eq "c"){
        print "ц";
      } elsif ($prev eq "E"){
        print "Е";
      } elsif ($prev eq "e"){
        print "е";
      }
    }

    #j digraphs jo, ja, ju
    if ($prev eq "j"){
      if ($_ eq "o"){
        print "ё";
      } elsif ($_ eq "a"){
        print "я";
      } elsif ($_ eq "u"){
        print "ю";
      } else {
        print "й";
      }
    } elsif ($prev eq "J"){
      if ($_ eq "o" || $_ eq "O"){
        print "Ё";
      } elsif ($_ eq "a" || $_ eq "A"){
        print "Я";
      } elsif ($_ eq "u" || $_ eq "U"){
        print "Ю";
      } else {
        print "Й";
      }
    }

    if ($_ eq "A" && $prev ne "j" && $prev ne "J"){
      print "А";
    } elsif ($_ eq "a" && $prev ne "j" && $prev ne "J"){
      print "а";
    } elsif ($_ eq "B"){
      print "Б";
    } elsif ($_ eq "b"){
      print "б";
    } elsif ($_ eq "V"){
      print "В";
    } elsif ($_ eq "v"){
      print "в";
    } elsif ($_ eq "G"){
      print "Г";
    } elsif ($_ eq "g"){
      print "г";
    } elsif ($_ eq "D"){
      print "Д";
    } elsif ($_ eq "d"){
      print "д";
    } elsif ($_ eq "I"){
      print "И";
    } elsif ($_ eq "i"){
      print "и";
    } elsif ($_ eq "K"){
      print "К";
    } elsif ($_ eq "k"){
      print "к";
    } elsif ($_ eq "L"){
      print "Л";
    } elsif ($_ eq "l"){
      print "л";
    } elsif ($_ eq "M"){
      print "М";
    } elsif ($_ eq "m"){
      print "м";
    } elsif ($_ eq "N"){
      print "Н";
    } elsif ($_ eq "n"){
      print "н";
    } elsif ($_ eq "O" && $prev ne "j" && $prev ne "J"){
      print "О";
    } elsif ($_ eq "o" && $prev ne "j" && $prev ne "J"){
      print "о";
    } elsif ($_ eq "P"){
      print "П";
    } elsif ($_ eq "p"){
      print "п";
    } elsif ($_ eq "R"){
      print "Р";
    } elsif ($_ eq "r"){
      print "р";
    } elsif ($_ eq "T"){
      print "Т";
    } elsif ($_ eq "t"){
      print "т";
    } elsif ($_ eq "U" && $prev ne "j" && $prev ne "J"){
      print "У";
    } elsif ($_ eq "u" && $prev ne "j" && $prev ne "J"){
      print "у";
    } elsif ($_ eq "F"){
      print "Ф";
    } elsif ($_ eq "f"){
      print "ф";
    } elsif ($_ eq "X"){
      print "Х";
    } elsif ($_ eq "x"){
      print "х";
    } elsif ($_ eq "W"){ #haters gonna hate
      print "Щ";
    } elsif ($_ eq "w"){
      print "щ";
    } elsif ($_ eq "Y"){
      print "Ы";
    } elsif ($_ eq "y"){
      print "ы";
    } elsif ($_ eq "\'"){
      print "ь";
    } elsif ($_ eq "\""){
      print "ъ";
    } elsif ($_ eq " "){
      print " ";
    } elsif ($_ eq "."){
      print ".";
    }

    $prev = $_;
  }
  print "\n";
}
