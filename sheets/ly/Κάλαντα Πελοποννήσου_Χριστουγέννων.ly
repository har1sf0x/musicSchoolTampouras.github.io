\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Κάλαντα Πελοποννήσου"
pieceSubtitle = "Κάλαντα Χριστουγέννων"
pieceFilename = "Κάλαντα_Πελοποννήσου_Χριστουγέννων"
keyA = \setRastKey
keyB = \setRastBKey

pieceNotes = \new Voice \relative c'' {
  \setFourTime
  \partial 4 d,4-0^\arrowDown
  \repeat volta 2 {
    \RastChord 4 ^\arrowDown \RastChord 8 ^\arrowDown \RastChord 8 ^\arrowUp \ADChord 4 ^\arrowDown \ADChord 4 ^\arrowUp
    bfc'8-1^\arrowDown c-3^\arrowUp bfc-1^\arrowDown a-0^\arrowUp \RastChord 4 ^\arrowDown \RastChord 4 ^\arrowUp
    c8-3^\arrowDown bfc-1^\arrowUp c-1^\arrowDown d-3^\arrowUp bfc-5^\arrowDown a-0^\arrowUp bfc-5^\arrowDown (g-0)
    \alternative {
      \volta 1 {
        \ADChord 4 ^\arrowDown \ADChord 8 ^\arrowDown \ADChord 8 ^\arrowUp \ADChord 4 ^\arrowDown d4-0^\arrowDown
      }
      \volta 2 {
        \ADChord 2 ^\arrowDown \ADChord 2 ^\arrowDown \FBarline
      }
    }
  }
}

\layout {
  indent = #0
  #(set-default-paper-size '(cons (* 210 mm) (* 65 mm)))
}

\header {
  title = \pieceName
  subtitle = \pieceSubtitle
  copyright = "Χ. Κόχυλας"
}
\layout {
  \override TextScript.transparent = ##t
  \override Fingering.transparent = ##t
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
  \override TextScript.transparent = ##t
  \override Fingering.transparent = ##f
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
  \override TextScript.transparent = ##f
  \override Fingering.transparent = ##t
  \override TextScript.script-priority = #-200
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
  \override TextScript.transparent = ##f
  \override Fingering.transparent = ##f
  \override TextScript.script-priority = #200
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
  \override TextScript.transparent = ##t
  \override Fingering.transparent = ##t
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
  \override TextScript.transparent = ##t
  \override Fingering.transparent = ##f
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
  \override TextScript.transparent = ##f
  \override Fingering.transparent = ##t
  \override TextScript.script-priority = #-200
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
  \override TextScript.transparent = ##f
  \override Fingering.transparent = ##f
  \override TextScript.script-priority = #200
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
  