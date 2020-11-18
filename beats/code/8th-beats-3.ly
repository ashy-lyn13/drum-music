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

%------------Snippits---------------%
%{
   Repeat Percents
   -- number is for amount of repeated bars
   -- to repeat 2 bars, add | between them
\repeat percent 4 {}

High Hat and snare 8ths
  hh8 hh8 <sn hh>8 hh8 hh8 hh8 <sn hh>8 hh8 
%}
%------------MUSIC-INPUT------------%
\header {
  title = "1/8th Beats 3"
  composer = "Beginner"
}

\score {
  \new DrumStaff {
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <bd hh>8^"+" hh8^"3" hh8^"+" <sn hh>8^"4" hh8^"+"
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <bd hh>8^"+" hh8^"3" hh8^"+" <sn hh>8^"4" hh8^"+"

      }
    }
  \header {
    piece = "1"
  }
}

%-------------------------------------%

\score {
  \new DrumStaff {
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" hh8^"+" <bd hh>8^"3" hh8^"+" <sn hh>8^"4" hh8^"+"
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" hh8^"+" hh8^"3" <bd hh>8^"+" <sn hh>8^"4" hh8^"+"
      }
    }
  \header {
    piece = "2"
  }
}

%-------------------------------------%

\score {
  \new DrumStaff {
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <bd hh>8^"+" hh8^"3" <bd hh>8^"+" <sn hh>8^"4" hh8^"+"
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <bd hh>8^"+" hh8^"3" <bd hh>8^"+" <sn hh>8^"4" hh8^"+"
      }
    }
  \header {
    piece = "3"
  }
}

%-------------------------------------%

\score {
  \new DrumStaff {
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" hh8^"+" hh8^"3" <bd hh>8^"+" <sn hh>8^"4" <bd hh>8^"+"
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" hh8^"+" hh8^"3" <bd hh>8^"+" <sn hh>8^"4" <bd hh>8^"+"
      }
    }
  \header {
    piece = "4"
  }
}

%-------------------------------------%

\score {
  \new DrumStaff {
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8^"1" <bd hh>8^"+" <sn hh>8^"2" <bd hh>8^"+" hh8^"3" <bd hh>8^"+" <sn hh>8^"4" <bd hh>8^"+"
<bd hh>8^"1" <bd hh>8^"+" <sn hh>8^"2" <bd hh>8^"+" hh8^"3" <bd hh>8^"+" <sn hh>8^"4" <bd hh>8^"+"

      }
    }
  \header {
    piece = "5"
  }
}

%-------------------------------------%

\score {
  \new DrumStaff {
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8^"1" <bd hh>8^"+" <sn hh>8^"2" <bd hh>8^"+" hh8^"3" <bd hh>8^"+" <sn hh>8^"4" <sn hh>8^"+"
      <bd hh>8^"1" <bd hh>8^"+" <sn hh>8^"2" <bd hh>8^"+" hh8^"3" <bd hh>8^"+" <sn hh>8^"4" <sn hh>8^"+"
      }
    }
  \header {
    piece = "6"
  }
}

%-------------------------------------%

\score {
  \new DrumStaff {
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <sn bd hh>8^"+" hh8^"3" <bd hh>8^"+" <sn hh>8^"4" hh8^"+"
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <sn bd hh>8^"+" hh8^"3" <bd hh>8^"+" <sn hh>8^"4" hh8^"+"
      }
    }
  \header {
    piece = "7"
  }
}

%-------------------------------------%

\score {
  \new DrumStaff {
    \magnifyStaff #6/4
    \numericTimeSignature
    \repeat volta 4
    \drummode {
      \stemUp
      \beamform
      \textform
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <bd hh>8^"+" <sn hh>8^"3" <bd hh>8^"+" <sn hh>8^"4" hh8^"+"
      <bd hh>8^"1" hh8^"+" <sn hh>8^"2" <bd hh>8^"+" <sn hh>8^"3" <bd hh>8^"+" <sn hh>8^"4" hh8^"+"

      }
    }
  \header {
    piece = "8"
  }
}

%-------------------------------------%
