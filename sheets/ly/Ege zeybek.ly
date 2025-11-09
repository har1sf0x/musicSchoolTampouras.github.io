%\version "2.22.2"
\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Ege zeybek"
pieceSubtitle = "Ανατολικό Αιγαίο Παράλια Μικράς Ασίας"
pieceFilenameOne = "Ege_zeybek"
pieceFilenameTwo = "Ege_zeybek_πενιές"
pieceFilenameThree = "Ege_zeybek_inΝτο"
pieceFilenameFour = "Ege_zeybek_inΝτο_πενιές"

pieceNotes = \new Voice \relative c''' {
  \setZeybekTime
  \section \sectionLabel "Α"
  g8 g16 g f e d8
  e e16 e d c b8
  g 16 d'8 b16 c8 a
  <g \single \greyNote d'> <g \single \greyNote d'>16 a b8 c \once \tiny \grace b8 \glissando d4
  g8 g16 g f e d8
  e e16 e d c b8
  g 16 d'8 b16 c8 a
  <g \single \greyNote d'>4 <g \single \greyNote d'> <g \single \greyNote d'> \FBarline
  \section \sectionLabel "Β" \set Score.currentBarNumber = #1
  <g \single \greyNote d'>8 <g \single \greyNote d'>16 b a a c8
  b b16 d c c e8
  g,16 d'8 b16 c8 a
  <g \single \greyNote d'> <g \single \greyNote d'>16 a b8 c \once \tiny \grace b8 \glissando d4
  <g, \single \greyNote d'>8 <g \single \greyNote d'>16 b a a c8
  b b16 d c c e8
  g,16 d'8 b16 c8 a
  <g \single \greyNote d'>4 <g \single \greyNote d'> <g \single \greyNote d'> \FBarline
  \section \sectionLabel "Γ" \set Score.currentBarNumber = #1
  g'8 g16 g f e d8
  e fb g a
  b8 b16 g a a fb8
  g g16 a b8 c \once \tiny \grace b8 \glissando d4
  g,8 g16 g f e d8
  e fb g a
  b8 b16 g a a fb8
  g4 g g \FBarline
}
pieceArrows = \new Voice {
  s8^\arrowDown s16^\arrowZeybek s^\arrowUp s^\arrowDown s^\arrowUp s8^\arrowDown
  s^\arrowDown s16^\arrowZeybek s^\arrowUp s^\arrowDown s^\arrowUp s8^\arrowUp
  s16^\arrowDown s8^\arrowUp s16^\arrowUp s8^\arrowDown s^\arrowZeybek
  s^\arrowDown s16^\arrowZeybek s^\arrowUp s8^\arrowDown s^\arrowZeybek \grace s8^\arrowUp  s4
  s8^\arrowDown s16^\arrowZeybek s^\arrowUp s^\arrowDown s^\arrowUp s8^\arrowDown
  s^\arrowDown s16^\arrowZeybek s^\arrowUp s^\arrowDown s^\arrowUp s8^\arrowUp
  s16^\arrowDown s8^\arrowUp s16^\arrowUp s8^\arrowDown s^\arrowZeybek
  s4^\arrowDown s^\arrowUp s^\arrowDown
  \section
  s8^\arrowDown s16^\arrowZeybek s^\arrowUp s^\arrowDown s^\arrowUp s8^\arrowUp
  s8^\arrowDown s16^\arrowZeybek s^\arrowUp s^\arrowDown s^\arrowUp s8^\arrowUp
  s16^\arrowDown s8^\arrowUp s16^\arrowUp s8^\arrowDown s^\arrowZeybek
  s^\arrowDown s16^\arrowZeybek s^\arrowUp s8^\arrowDown s^\arrowZeybek \grace s8^\arrowUp  s4
  s8^\arrowDown s16^\arrowZeybek s^\arrowUp s^\arrowDown s^\arrowUp s8^\arrowUp
  s8^\arrowDown s16^\arrowZeybek s^\arrowUp s^\arrowDown s^\arrowUp s8^\arrowUp
  s16^\arrowDown s8^\arrowUp s16^\arrowUp s8^\arrowDown s^\arrowZeybek
  s4^\arrowDown s^\arrowUp s^\arrowDown
  \section
  s8^\arrowDown s16^\arrowZeybek s^\arrowUp s^\arrowDown s^\arrowUp s8^\arrowDown
  s8^\arrowDown s^\arrowZeybek s^\arrowDown s^\arrowZeybek
  s8^\arrowDown s16^\arrowZeybek s^\arrowUp s^\arrowDown s^\arrowUp s8^\arrowUp
  s^\arrowDown s16^\arrowZeybek s^\arrowUp s8^\arrowDown s^\arrowZeybek \grace s8^\arrowUp  s4
  s8^\arrowDown s16^\arrowZeybek s^\arrowUp s^\arrowDown s^\arrowUp s8^\arrowDown
  s8^\arrowDown s^\arrowZeybek s^\arrowDown s^\arrowZeybek
  s8^\arrowDown s16^\arrowZeybek s^\arrowUp s^\arrowDown s^\arrowUp s8^\arrowUp
  s4^\arrowDown s^\arrowUp s^\arrowDown
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
  \bookOutputName \pieceFilenameOne
  \paper {
    print-page-number = ##f
  }
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
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
  \bookOutputName \pieceFilenameTwo
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
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
  \bookOutputName \pieceFilenameThree
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
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
  \bookOutputName \pieceFilenameFour
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \transpose g c \pieceNotes
          \pieceArrows
        >>
      }
    }
  }
}
  