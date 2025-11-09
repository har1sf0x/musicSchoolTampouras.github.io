\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Ασκήσεις - no. 001"
pieceSubtitle = "α' γυμνασίου"
pieceFilename = "Ασκήσεις_α_no_001"
keyA = \setRastKey
keyB = \setRastBKey

pieceNotes = \new Voice \relative c'' {
  \section \offset Y-offset 2 \sectionLabel "1.1"
  \repeat unfold 4 {a4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "1.2"
  \repeat unfold 4 {bfc4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "1.3"
  \repeat unfold 4 {c4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "1.4"
  \repeat unfold 4 {d4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "1.5"
  \repeat unfold 4 {e4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "1.6"
  \repeat unfold 4 {fb4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "1.7"
  \repeat unfold 4 {g4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "1.8"
  \repeat unfold 4 {<<g,4 \single \greyNote d'>>} \ERBarline \break
  \set Score.currentBarNumber = #1
  \section \offset Y-offset 2 \sectionLabel "2.1"
  \repeat unfold 4 {a4} \repeat unfold 4 {bfc4} \DRBarline \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "2.2"
  \repeat unfold 4 {bfc4} \repeat unfold 4 {c4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "2.3"
  \repeat unfold 4 {c4} \repeat unfold 4 {d4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "2.4"
  \repeat unfold 4 {d4} \repeat unfold 4 {e4} \DRBarline \break
  \section \offset Y-offset 2  \sectionLabel "2.5"
  \repeat unfold 4 {e4} \repeat unfold 4 {f4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "2.6"
  \repeat unfold 4 {e4} \repeat unfold 4 {fb4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "2.7"
  \repeat unfold 4 {fb4} \repeat unfold 4 {g4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "2.8"
  \repeat unfold 4 {<<g,4 \single \greyNote d'>>} \repeat unfold 4 {a4} \ERBarline \break
  \set Score.currentBarNumber = #1
  \section \offset Y-offset 2 \sectionLabel "3.1"
  \repeat unfold 2 {a4} \repeat unfold 2 {bfc4} \DRBarline \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "3.2"
  \repeat unfold 2 {bfc4} \repeat unfold 2 {c4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "3.3"
  \repeat unfold 2 {c4} \repeat unfold 2 {d4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "3.4"
  \repeat unfold 2 {d4} \repeat unfold 2 {e4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "3.5"
  \repeat unfold 2 {e4} \repeat unfold 2 {f4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "3.6"
  \repeat unfold 2 {e4} \repeat unfold 2 {fb4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "3.7"
  \repeat unfold 2 {fb4} \repeat unfold 2 {g4} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "3.8"
  \repeat unfold 2 {<<g,4 \single \greyNote d'>>} \repeat unfold 2 {a4} \ERBarline \break
  \set Score.currentBarNumber = #1
  \section \offset Y-offset 2 \sectionLabel "4.1"
  \repeat unfold 2 {a4 bfc} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "4.2"
  \repeat unfold 2 {bfc4 c} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "4.3"
  \repeat unfold 2 {c4 d} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "4.4"
  \repeat unfold 2 {d4 e} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "4.5"
  \repeat unfold 2 {e4 f} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "4.6"
  \repeat unfold 2 {e4 fb} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "4.7"
  \repeat unfold 2 {fb4 g} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "4.8"
  \repeat unfold 2 {<<g,4 \single \greyNote d'>> a} \ERBarline \break
  \set Score.currentBarNumber = #1
  \section \offset Y-offset 2 \sectionLabel "5.1"
  \repeat unfold 2 {bfc4 a} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "5.2"
  \repeat unfold 2 {c4 bfc} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "5.3"
  \repeat unfold 2 {d4 c} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "5.4"
  \repeat unfold 2 {e4 d} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "5.5"
  \repeat unfold 2 {f4 e} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "5.6"
  \repeat unfold 2 {fb4 e} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "5.7"
  \repeat unfold 2 {g4 fb} \DRBarline
  \section \offset X-offset -2 \offset Y-offset 2  \sectionLabel "5.8"
  \repeat unfold 2 {a,4 <<g \single \greyNote d'>>} \ERBarline \break
}
pieceArrows = \new Voice {
  \repeat unfold 16 {s4^\arrowDown s4^\arrowUp}
  
  \repeat unfold 32 {s4^\arrowDown s4^\arrowUp}
  
  \repeat unfold 16 {s4^\arrowDown s4^\arrowUp}
  
  \repeat unfold 16 {s4^\arrowDown s4^\arrowUp}
  
  \repeat unfold 16 {s4^\arrowDown s4^\arrowUp}
}

\layout {
  indent = #0
  #(set-default-paper-size '(cons (* 210 mm) (* 170 mm)))
}

\layout {
  \override TextScript.transparent = ##t
}
\header {
  title = \pieceName
  subtitle = \pieceSubtitle
  copyright = "Χ. Κόχυλας"
}
\book {
  \bookOutputName \pieceFilename
  \paper {
    print-page-number = ##f
  }
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
      \keyA
      <<
        \pieceNotes
        \pieceArrows
      >>
      }
    }
  }
}
\layout {
  \override TextScript.transparent = ##f
}
\book {
  \bookOutputName #(string-append pieceFilename "_πενιές")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
      \keyA
      <<
        \pieceNotes
        \pieceArrows
      >>
      }
    }
  }
}
\layout {
  \override TextScript.transparent = ##t
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
      \keyB
      <<
        \transpose g c \pieceNotes
        \pieceArrows
      >>
      }
    }
  }
}
\layout {
  \override TextScript.transparent = ##f
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_πενιές")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
      \keyB
      <<
        \transpose g c \pieceNotes
        \pieceArrows
      >>
      }
    }
  }
}
  