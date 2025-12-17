\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Κάτω στο γιαλό (α)"
pieceSubtitle = "Αιγαίο (Χίος)"
pieceFilename = "Κάτω_στο_γιαλό_α"
source = "https://vmrebetiko.gr/item/?id=4924"
keyA = \setRastKey
keyB = \setRastBKey

pieceNotes = \new Voice \relative c'' {
  \time 2/4
  \sectionLabel "A"
  bfc8-1\arrowDown c16-1\arrowDown c-1\arrowUp d8-1\arrowDown e-3\arrowUp
  d8-1\arrowUp d16-1\arrowDown d-1\arrowUp d8-1\arrowDown \tweak Parentheses.font-size -2 \parenthesize <d-1\arrowUp bfc>
  e8-3\arrowDown d16-1\arrowDown d-1\arrowUp c8-1\arrowDown bfc-1\arrowUp
  d8-3\arrowDown d16-3\arrowDown d-3\arrowDown bfc8-1\arrowDown bfc-1\arrowUp \DRBarline
  \section \sectionLabel "B"
  d8-3\arrowDown c16-1\arrowDown bfc-1\arrowUp \ADChord 8 \arrowDown \ADChord 8 \arrowUp
  \RastChord 8 \arrowDown a16-0\arrowDown a-0\arrowUp bfc8-1\arrowDown c-1\arrowUp
  d8-3\arrowDown c16-1\arrowDown bfc-1\arrowUp \ADChord 8 \arrowDown \ADChord 8 \arrowUp
  \RastChord 8 \arrowDown a16-0\arrowDown a-0\arrowUp bfc8-1\arrowDown bfc-1\arrowUp \ERBarline
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
  paper-height = 55\mm
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
  \override Script.transparent = ##t
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
        \keyA
        \pieceNotes
      }
    }
  }
}
\layout {
  \override Script.transparent = ##t
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
}
\book {
  \bookOutputName #(string-append pieceFilename "_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        \keyA
        \pieceNotes
      }
    }
  }
}


\layout {
  \override Script.transparent = ##f
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
}
\book {
  \bookOutputName #(string-append pieceFilename "_πενιές")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        \keyA
        \pieceNotes
      }
    }
  }
}
\layout {
  \override Script.transparent = ##f
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
}
\book {
  \bookOutputName #(string-append pieceFilename "_πενιές_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        \keyA
        \pieceNotes
      }
    }
  }
}
\layout {
  \override Script.transparent = ##t
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        \keyB
        \transpose g c \pieceNotes
      }
    }
  }
}
\layout {
  \override Script.transparent = ##t
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        \keyB
        \transpose g c \pieceNotes
      }
    }
  }
}
\layout {
  \override Script.transparent = ##f
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_πενιές")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        \keyB
        \transpose g c \pieceNotes
      }
    }
  }
}
\layout {
  \override Script.transparent = ##f
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_πενιές_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        \keyB
        \transpose g c \pieceNotes
      }
    }
  }
}