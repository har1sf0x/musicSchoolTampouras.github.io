\version "2.24.4"

\include "utilities_01.ly"
% \language "english"
% d8 ef d c bf a g fs

pieceName = "Από ξένο τόπο"
pieceSubtitle = "Κωνσταντινούπολη"
pieceFilename = "Από_ξένο_τόπο"
source = ""
keyA = \key g \minor
keyB = \key c \minor

melody = \relative c'' {
  % \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  % \set Score.alternativeNumberingStyle = #'numbers-with-letters
  \setFourTime
  \section \sectionLabel "A"
  \repeat segno 2 {
    \repeat volta 2 {
      % measure 1
      d8-1\arrowDown efk-2\arrowUp d-1\arrowDown c-1\arrowUp bfk-5\arrowDown a-0\arrowUp bfk-5\arrowDown c-1\arrowUp
      % measure 2
      d8-1\arrowDown efk-2\arrowUp d-1\arrowDown c-1\arrowUp bfk-5\arrowDown a-0\arrowUp \RastChord 4 \arrowDown
      % measure 3
      d8-1\arrowDown efk-2\arrowUp d-1\arrowDown c-1\arrowUp bfk-5\arrowDown a-0\arrowUp bfk-5\arrowDown c-1\arrowUp
      % measure 4
      <<
        {d4-1\arrowDown d8-1\arrowDown efk-2\arrowUp d8-1\arrowDown c-5\arrowDown d4-1\arrowDown}
        \new Staff \with {
          \remove Time_signature_engraver
          alignAboveContext = "baglama"
          \magnifyStaff #2/3
          firstClef = ##f
        }
        {d4-1\arrowDown g16-1\arrowDown (a-3) g-1\arrowUp (fb-1) g8-2\arrowDown (fb-1) efk8-1\arrowDown d-1\arrowUp}
      >>
      % measure 5
      d8-1\arrowDown efk-2\arrowUp d-1\arrowDown c-1\arrowUp bfk-5\arrowDown a-0\arrowUp bfk-5\arrowDown c-1\arrowUp
      % measure 6
      d8-1\arrowDown efk-2\arrowUp d-1\arrowDown c-1\arrowUp bfk-5\arrowDown a-0\arrowUp \RastChord 4 \arrowDown
      % measure 7
      \ADAChord 8 \arrowDown c8-3\arrowUp bfk-1\arrowDown a-0\arrowUp \ADAChord 8 \arrowDown (g8-0) \RastChord 8 \arrowUp (fb8-2)
      % measure 8
      \RastChord 4 \arrowDown \RastChord 8 \arrowDown \RastChord 8 \arrowUp \RastChord 8 \arrowDown \RastChord 8 \arrowUp \RastChord 4 \arrowDown \fine
    }
    \section \break \sectionLabel "B" %\set Score.currentBarNumber = #1
    % measure 9
    g4-0\arrowDown \single \greyNote g8-0\arrowDown d'-1\arrowUp <\single \greyNote \parenthesize d8-1 g,\arrowDown> d-1\arrowUp d4-1\arrowDown
    % measure 10
    efk8-2\arrowDown d-1\arrowUp efk-1\arrowDown f-3\arrowUp <\single \greyNote \parenthesize d4-1 g,\arrowDown> d8-1\arrowDown c-1\arrowUp
    % measure 11
    c4-1\arrowDown c8-1\arrowDown d-3\arrowUp bfk-5\arrowDown d-3\arrowUp c4-1\arrowDown
    % measure 12
    d8-1\arrowDown efk-2\arrowUp d-1\arrowDown c-1\arrowUp bfk-5\arrowDown a-0\arrowUp g-0\arrowDown fb-2\arrowUp
    % measure 13
    g4-0\arrowDown \single \greyNote g8-0\arrowDown d'-1\arrowUp <\single \greyNote \parenthesize d8-1 g,\arrowDown> d-1\arrowUp d4-1\arrowDown
    % measure 14
    efk8-2\arrowDown d-1\arrowUp efk-1\arrowDown f-3\arrowUp <\single \greyNote \parenthesize d4-1 g,\arrowDown> d8-1\arrowDown c-1\arrowUp
    % measure 15
    c4-1\arrowDown c8-1\arrowDown d-3\arrowUp bfk-5\arrowDown d-3\arrowUp c4-1\arrowDown
    % measure 16
    d4-1\arrowDown d8-1\arrowDown efk-2\arrowUp d8-1\arrowDown c-5\arrowDown d4-1\arrowDown
    \section \break \sectionLabel "Γ"
    % measure 17
    \RastChord 4 \arrowDown g,8-0\arrowDown a-0\arrowUp bfk-5\arrowDown a-0\arrowUp c4-1\arrowDown
    % measure 18
    d8-1\arrowDown efk-2\arrowUp d-1\arrowDown c-1\arrowUp bfk-5\arrowDown a-0\arrowUp \RastChord 4 \arrowDown
    % measure 19
    \ADAChord 8 \arrowDown (c8-3) bfk-1\arrowDown a-0\arrowUp \ADAChord 8 \arrowDown (g8-0) fb8-2\arrowDown (\RastChord 8 \noArrow)
    % measure 20
    a4-0\arrowDown fb-2\arrowDown efk-1\arrowDown d-0\arrowDown
    % measure 21
    \RastChord 4 \arrowDown g8-0\arrowDown a-0\arrowUp bfk-5\arrowDown a-0\arrowUp c4-1\arrowDown
    % measure 22
    d8-1\arrowDown efk-2\arrowUp d-1\arrowDown c-1\arrowUp bfk-5\arrowDown a-0\arrowUp \RastChord 4 \arrowDown
    % measure 23
    \ADAChord 8 \arrowDown (c8-3) bfk-1\arrowDown a-0\arrowUp \ADAChord 8 \arrowDown (g8-0) \RastChord 8 \arrowUp (fb8-2)
    % measure 24
    \RastChord 4 \arrowDown \RastChord 8 \arrowDown \RastChord 8 \arrowUp \RastChord 8 \arrowDown \RastChord 8 \arrowUp \RastChord 4 \arrowDown \FBarline
  }
}

verseOne = \lyricmode {
  \new Lyrics {
    \set associatedVoice = "one"
    \repeat unfold 56 {\skip 1}
    \override StanzaNumber.font-series = #'medium
    \set stanza = "1."
    Α -- _ πό ξέ -- _ νο τό -- _ _ _ πό _ _ κιαπ' α -- _ λαρ -- _ γι -- νό, \repeat unfold 7 {\skip 1}
    Α -- _ πό ξέ -- _ νο τό -- _ _ _ πό _ _ κιαπ' α -- _ λαρ -- _ γι -- νό, \repeat unfold 5 {\skip 1}
    ήρ -- _ θ'ε -- να _ κο -- ρί -- _ τσι -- _ φως _ μου δώ -- δε -- _ κά χρό -- νώ, \repeat unfold 3 {\skip 1}
    ήρ -- _ θ'ε -- να _ κο -- ρί -- _ τσι -- _ φως _ μου δώ -- δε -- _ κά χρό -- νώ.
  }
}

% Aπό ξένο τόπο κι απ’ αλαργινό,
% ήρθ’ ένα κορίτσι, φως μου, δώδεκα χρονώ.
% Έχει μαύρα μάτια και σγουρά μαλλιά,
% και στο μάγουλό της, φως μου, έχει μιαν ελιά.
% Δε μου τη χαρίζεις δε μου την πουλάς,
% την ελίτσα που `χεις, φως μου, και με τυραννάς.
% Δε σου τη χαρίζω, δε σου την πουλώ,
% μον' θα τη κρατήσω, φως μου, να σε τυραννώ.

extraVerses = \markup {
  \abs-fontsize #10
  \column {
    \fill-line {
      \column {
        \line { \bold "1."
          \column {
            "Aπό ξένο τόπο κι απ’ αλαργινό, *2"
            "ήρθ’ ένα κορίτσι, φως μου, δώδεκα χρονώ. *2"
          }
        }
        \combine \null \vspace #0.1
        \line { \bold "2."
          \column {
            "Έχει μαύρα μάτια και σγουρά μαλλιά, *2"
            "και στο μάγουλό της, φως μου, έχει μιαν ελιά. *2"
          }
        }
      }
      \column {
        \line { \bold "3."
          \column {
            "Δε μου τη χαρίζεις δε μου την πουλάς, *2"
            "την ελίτσα που `χεις, φως μου, και με τυραννάς. *2"
          }
        }
        \combine \null \vspace #0.1
        \line { \bold "4."
          \column {
            "Δε σου τη χαρίζω, δε σου την πουλώ, *2"
            "μον' θα τη κρατήσω, φως μου, να σε τυραννώ. *2"
          }
        }
      }
    }
  }
}

%%%%%%% pdf %%%%%%%
% \paper {
%   #(set-paper-size "a4")
%   top-margin = 2\cm
%   left-margin = 1\cm
%   right-margin = 1\cm
%   indent = #0
% }

%%%%%%% svg %%%%%%%
\paper {
  paper-width = 210\mm
  paper-height = 250\mm
  left-margin = 1\cm
  right-margin = 1\cm
  indent = #0
}

\header {
  title = \pieceName
  subtitle = \pieceSubtitle
  copyright = "Χ. Κόχυλας"
}
\layout {
  \override LyricText.font-size=#-2
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
}
\book {
  \bookOutputName \pieceFilename
  \paper {
    print-page-number = ##f
  }
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #hideArrowsArticulationNear
            \keyA
            \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}
\layout {
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
}
\book {
  \bookOutputName #(string-append pieceFilename "_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #hideArrowsArticulationNear
            \keyA
            \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}
\layout {
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
}
\book {
  \bookOutputName #(string-append pieceFilename "_πενιές")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #articulationNear
            \keyA
            \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}
\layout {
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
}
\book {
  \bookOutputName #(string-append pieceFilename "_πενιές_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #articulationNear
            \keyA
            \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}
\layout {
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #hideArrowsArticulationNear
            \keyB
            \transpose g c \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}
\layout {
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #hideArrowsArticulationNear
            \keyB
            \transpose g c \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}
\layout {
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_πενιές")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #articulationNear
            \keyB
            \transpose g c \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}
\layout {
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_πενιές_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #articulationNear
            \keyB
            \transpose g c \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}