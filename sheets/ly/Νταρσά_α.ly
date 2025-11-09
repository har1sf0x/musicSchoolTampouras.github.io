\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Νταρσά (α)"
pieceSubtitle = "Αρβανίτικο"
pieceFilename = "Νταρσά_α"
pieceFilenameB = #(string-append pieceFilename "_πενιές")
keyA = \setUssakKey
keyB = \setUssakBKey

pieceNotes = \new Voice \relative c'' {
  \setKalamTime
  \set Score.alternativeNumberingStyle = #'numbers-with-letters
  \partial 4 e8 d
  \repeat segno 2 {
    \set Score.currentBarNumber = #1
    \repeat volta 2 {
      d8 d c c bfc bfc a
      a4 a8 a4 e'8 d
      d8 d c c bfc bfc a
      \alternative {
        \volta 1 {a4 a8 a4 e'8 d}
        \volta 2 {a4 a8 a g a bfc}
      }
    }
    \break
    \set Score.currentBarNumber = #5
    \repeat volta 2 {
      c8 c c c4 c8 c
      bfc4 a8 g4 e'8 d
      d8 d c c bfc bfc a
      a4 a8 a g a bfc
      %\break
      c8 c c c4 c8 c
      bfc4 a8 g4 e'8 d
      d8 d c c bfc bfc a
      \alternative {
        \volta 1 {a4 a8 a g a bfc}
        \volta 2 {a4 \offset X-offset -2 \coda a8 a4 e'8 d \FBarline}
      }
    }
    \section
    \sectionLabel "Coda"
  }
  a4 a8 a4
  \fine
}
pieceArrows = \new Voice {
  s8^\arrowDown s^\arrowUp
  s8^\arrowDown s^\arrowUp s^\arrowUp s^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp
  s4^\arrowDown s8^\arrowUp s4^\arrowDown s8^\arrowDown s^\arrowUp
  s8^\arrowDown s^\arrowUp s^\arrowUp s^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp
  s4^\arrowDown s8^\arrowUp s4^\arrowDown s8^\arrowDown s^\arrowUp
  s4^\arrowDown s8^\arrowUp s^\arrowDown s^\arrowDown s^\arrowDown s^\arrowUp
  
  \repeat unfold 2 {
    s8^\arrowDown s^\arrowUp s^\arrowUp s4^\arrowDown s8^\arrowDown s^\arrowUp
    s4^\arrowDown s8^\arrowUp s4^\arrowDown s8^\arrowDown s^\arrowUp
    s8^\arrowDown s^\arrowUp s^\arrowUp s^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp
    s4^\arrowDown s8^\arrowUp s^\arrowDown s^\arrowDown s^\arrowDown s^\arrowUp
  }
  s4^\arrowDown s8^\arrowUp s4^\arrowDown s8^\arrowDown s^\arrowUp
  s4^\arrowDown s8^\arrowUp s4^\arrowDown
}

\layout {
  indent = #0
  #(set-default-paper-size '(cons (* 210 mm) (* 95 mm)))
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
  \bookOutputName \pieceFilenameB
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
  