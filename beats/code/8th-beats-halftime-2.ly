\version "2.19.84"

%---------------------Configuration---------------------%
#(set-global-staff-size 24)

\paper {
#(set-paper-size "letter")
}
\layout {
  \context {
    \Staff
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'(( basic-distance . 9)
    (minimum-distance . 7)
    (padding . 2.5))
}
}
% Staff Padding
textform = {
  \override TextScript.staff-padding = #4
}
% Beam Structure
beamform = {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
   \override Beam #'positions = #'(4.5 . 4.5)
}
% Slur Overrides
slurform = {
  \slurDown
  \override Slur #'height-limit = #0.5
}
%------------Drum-Staff------------%
#(define mydrums '(
                    ( ridecymbal    cross    #f   5)	
                    ( ridecymbala   xcircle  #f   5)
                    ( crashcymbal   cross    #f   6)	
                    ( splashcymbal  harmonic #f   6)
                    ( pedalhihat    cross    #f  -5)	
                    ( hihat         cross    #f   4)
                    ( snare         default  #f   1)	
                    ( sidestick     cross    #f   1)
                    ( lowmidtom     default  #f   0)	
                    ( lowtom        default  #f  -1)
                    ( hightom       default  #f   3)	
                    ( bassdrum      default  #f  -3)))


%------------MUSIC-INPUT------------%
\header {
  title = "1/8th Halftime Beats 2"
  composer = "Intermediate"
}


\score {
  \new DrumStaff {
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8 hh8 hh8 <bd hh>8 <sn hh>8 <bd hh>8 hh8 hh8
      <bd hh>8 hh8 hho8 hh8 <sn hhc>8 <bd hh>8 hho8 hhc8
      }
    }
  \header {
    piece = "1"
  }
}

%-------------------------------------%

\score {
  \new DrumStaff {
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8 hh8 hh8 <bd hho>8 <sn hhc>8 hh8 hh8 hho8
      <bd hhc>8 hh8 hho8 hho8 <sn hhc>8 <bd hh>8 hh8 hh8
      }
    }
  \header {
    piece = "2"
  }
}

%-------------------------------------%
\score {
  \new DrumStaff {
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8 hh8 hh8 <bd hh>8 <sn hh>8 hh8 hh8 <bd hh>8
      hh8 hh8 <bd hh>8 hh8 <sn hh>8 hh8 hh8 <bd hh>16 bd16
      }
    }
  \header {
    piece = "3"
  }
}

%-------------------------------------%

\score {
  \new DrumStaff {
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8 hh16 sn16 <bd hh>8 hh8 <sn hh>8 hh8 hh8 hho8
      <bd hhc>16 bd16 hh8 hh8 <bd hh>8 <sn hh>8 hh8 hho8 hh8
      }
    }
  \header {
    piece = "4"
  }
}

%-------------------------------------%

\score {
  \new DrumStaff {
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8 hh8 hh8 hh8 <sn hh>8 hh8 <bd hh>8 hh8
      hh16 bd <bd hh>8 hh8 hh8 <sn hh>8 hh8 hh8 hh8
      }
    }
  \header {
    piece = "5"
  }
}

%-------------------------------------%

\score {
  \new DrumStaff {
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>16 sn16 hh8 hh8 <sn hh>16 sn16 hh8 <bd hh>8 <sn hh>8 hh8
      <bd hh>8 <bd hh>8 hh8 <bd hh>8 <sn hh>8 hh8 hh8 hh8
      }
    }
  \header {
    piece = "6"
  }
}

%-------------------------------------%

\score {
  \new DrumStaff {
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8 hh16 sn hh8 <bd hho>8 <sn hhc>8 hh8 hh8 <bd hh>8
      <bd hh>8 hho8 hhc8 <bd hh>8 <sn hh>8 hh8 <sn hh>8 hh8
      }
    }
  \header {
    piece = "7"
  }
}

%-------------------------------------%

\score {
  \new DrumStaff {
    \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      hho8 hh <bd hho>8 hh <sn hh>8 hh16 sn16 <bd hh>8 <sn hh>
      <bd hh>8 hh <bd hh>8 <sn hh>16 sn16 <sn hh>8 hh hh8 hh
      }
    }
  \header {
    piece = "8"
  }
}

%-------------------------------------%

