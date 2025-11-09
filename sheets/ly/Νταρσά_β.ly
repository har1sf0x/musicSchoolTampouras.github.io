\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Νταρσά (β)"
pieceSubtitle = "Αρβανίτικο"
pieceFilename = "Νταρσά_β"
keyA = \setUssakKey
keyB = \setUssakBKey

pieceNotes = \new Voice \relative c'' {
  \setKalamTime
  \set Score.alternativeNumberingStyle = #'numbers-with-letters
  \partial 4 e8 d
  \repeat segno 2 {
    \set Score.currentBarNumber = #1
    \repeat volta 2 {
      d4 c8 c bfc bfc a
      a8 \teeny a16 g fb g \normalsize a4 e'8 d
      d4 c8 c bfc bfc a
      \alternative {
        \volta 1 {a8 \teeny a16 g fb g \normalsize a4 e'8 d}
        \volta 2 {a8 \teeny a16 g fb g a bfc a g fb g a bfc \normalsize}
      }
    }
    \break
    \set Score.currentBarNumber = #5
    \repeat volta 2 {
      c8 c c c4 c8 c
      bfc8 \teeny bfc16 c a bfc \normalsize g4 e'8 d
      d4 c8 c bfc bfc a
      a8 \teeny a16 g fb g a bfc a g fb g a bfc \normalsize
      c8 c c c4 c8 c
      bfc8 \teeny bfc16 c a bfc \normalsize g4 e'8 d
      d4 c8 c bfc bfc a
      \alternative {
        \volta 1 {a8 \teeny a16 g fb g a bfc a g fb g a bfc\normalsize}
        \volta 2 {a8 \offset X-offset -2 \coda \teeny a16 g fb g \normalsize a4 e'8 d \FBarline}
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
  s4^\arrowDown s8^\arrowZeybek s^\arrowDown s^\arrowSelpe s^\arrowDown s^\arrowUp
  s8^\arrowDown s16^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp s4^\arrowDown s8^\arrowDown s^\arrowUp
  s4^\arrowDown s8^\arrowZeybek s^\arrowDown s^\arrowSelpe s^\arrowDown s^\arrowUp
  
  s8^\arrowDown s16^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp s4^\arrowDown s8^\arrowDown s^\arrowUp
  
  s8^\arrowDown s16^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp
    s^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp
  
  \repeat unfold 2 {
    s8^\arrowDown s^\arrowUp s^\arrowUp s4^\arrowDown \grace s8^\arrowSelpe s8^\arrowDown s^\arrowUp
    s8^\arrowDown s16^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp s4^\arrowDown \grace s8^\arrowSelpe s8^\arrowDown s^\arrowUp
    s4^\arrowDown s8^\arrowZeybek s8^\arrowDown s^\arrowSelpe s^\arrowDown s^\arrowUp
    s8^\arrowDown s16^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp
      s^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp
  }
  s8^\arrowDown s16^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp s4^\arrowDown s8^\arrowDown s^\arrowUp
  s4^\arrowDown s8^\arrowZeybek s4^\arrowDown
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
  