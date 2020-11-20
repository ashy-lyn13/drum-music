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
  title = "1/8th Beats 2"
  composer = "Beginner"
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
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <sn hh>8^"+" <bd hh>8^"3" hh8^"+" <sn hh>8^"4" hh8^"+"
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <sn hh>8^"+" <bd hh>8^"3" hh8^"+" <sn hh>8^"4" hh8^"+"

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
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <sn hh>8^"+" <bd hh>8^"3" <bd hh>8^"+" <sn hh>8^"4" hh8^"+"
<bd hh>8^"1" hh8^"+" <sn hh>8^"2" <sn hh>8^"+" <bd hh>8^"3" <bd hh>8^"+" <sn hh>8^"4" hh8^"+"

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
      <bd hh>8^"1" <bd hh>8^"+" <sn hh>8^"2" <sn hh>8^"+" <bd hh>8^"3" hh8^"+" <sn hh>8^"4" <bd hh>8^"+"
<bd hh>8^"1" <bd hh>8^"+" <sn hh>8^"2" <sn hh>8^"+" <bd hh>8^"3" hh8^"+" <sn hh>8^"4" <bd hh>8^"+"
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
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <sn bd hh>8^"+" <bd hh>8^"3" <bd hh>8^"+" <sn hh>8^"4" <bd hh>8^"+"
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <sn bd hh>8^"+" <bd hh>8^"3" <bd hh>8^"+" <sn hh>8^"4" <bd hh>8^"+"

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
      <sn bd hh>8^"1" hh8^"+" <sn hh>8^"2" hh8^"+" <sn bd hh>8^"3" <bd hh>8^"+" <sn bd hh>8^"4" <bd hh>8^"+"
      <sn bd hh>8^"1" hh8^"+" <sn hh>8^"2" hh8^"+" <sn bd hh>8^"3" <bd hh>8^"+" <sn bd hh>8^"4" <bd hh>8^"+"

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
      <sn hh>8^"1" <bd hh>8^"+" <sn hh>8^"2" <bd hh>8^"+" <sn hh>8^"3" <bd hh>8^"+" <sn hh>8^"4" <bd hh>8^"+"
      <sn hh>8^"1" <bd hh>8^"+" <sn hh>8^"2" <bd hh>8^"+" <sn hh>8^"3" <bd hh>8^"+" <sn hh>8^"4" <bd hh>8^"+"

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
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <bd hh>8^"+" <bd hh>8^"3" hh8^"+" <sn hh>8^"4" <sn hh>8^"+"
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <bd hh>8^"+" <bd hh>8^"3" hh8^"+" <sn hh>8^"4" <sn hh>8^"+"

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
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <bd hh>8^"+" <bd hh>8^"3" <sn hh>8^"+" hh8^"4" <sn hh>8^"+"
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <bd hh>8^"+" <bd hh>8^"3" <sn hh>8^"+" hh8^"4" <sn hh>8^"+"
      }
    }
  \header {
    piece = "8"
  }
}

%-------------------------------------%

