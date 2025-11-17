\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Ντε βρε ντε"
pieceSubtitle = "Μελί, Μικρά Ασία"
pieceFilename = "Ντε_βρε_ντε"
keyA = \setUssakKey
keyB = \setUssakBKey

pieceNotes = \new Voice \relative c'' {
  \setKalamTime
  \large
  \repeat unfold 2 {
    <<g8. \single \greyNote d' g,>> <<\single \greyNote cb16 fb,16>> <<g8 \single \greyNote d' g,>>
    <<a4 d, a'>> <<a8 d, a'>> <<a8 d, a'>>
  }
  e'8 e d8 d (c) c bfc
  c8 c bfc16 (g) <<a4 d, a'>> <<a8 d, a'>> <<a8 d, a'>>
  <<g8. \single \greyNote d' g,>> <<\single \greyNote cb16 fb,16>> <<g8 \single \greyNote d' g,>>
  <<a4 d, a'>> <<a8 d, a'>> <<a8 d, a'>>
  <<g8. \single \greyNote d' g,>> <<\single \greyNote cb16 fb,16>> <<g8 \single \greyNote d' g,>>
  <<a8. d, a'>> bfc16 c8 d
  e8 e d8 d (c) c16 c bfc8
  c8 c bfc16 (g) <<a4 d, a'>> <<a8 d, a'>> \normalsize a8 | \break
  %\set Score.printInitialRepeatBar = ##t
  \repeat volta 4 {
    d4 d8 d4 d
    d16 d c8 d e4 e8 d
    c16 (bfc) c8 e d4 d8 a
    a8 bfc c d4 d8 a
    \large c8. c16 e8 d4 d8 a
    a8. bfc16 c8 d4 d8 \normalsize g,
    a4 bfc8 c16 (bfc c d) c8 bfc
    d8 d c bfc4 bfc8 a
    g16 g fb8 g a4 a8 a
    g16 g fb8 g a bfc c d
    e4 d8 d (c) c16 c bfc8
    c8 c bfc16 (g) <<a4 d, a'>> \large <<a8 d, a'>> <<a8 d, a'>>
    <<g8. \single \greyNote d' g,>> <<\single \greyNote cb16 fb,16>> <<g8 \single \greyNote d' g,>>
    <<a4 d, a'>> <<a8 d, a'>> <<a8 d, a'>>
    <<g8. \single \greyNote d' g,>> <<\single \greyNote cb16 fb,16>> <<g8 \single \greyNote d' g,>>
    <<a8. d, a'>> bfc16 c8 d
    e8 e d8 d (c) c16 c bfc8
    \alternative {
      \volta 1,2,3 {
        c8 c bfc16 (g) <<a4 d, a'>> <<a8 d, a'>> \normalsize a8
      }
      \volta 4 {
        \large c8 c bfc16 (g) <<a2 d, a'>> \FBarline
      }
    }
  }
}
pieceArrows = \new Voice {
  \repeat unfold 2 {
    s8.^\arrowDown s16^\arrowZeybekB s8^\arrowUp
    s4^\arrowDown \grace s16^\arrowSelpe s8^\arrowDown s8^\arrowUp
  }
  s8^\arrowDown s^\arrowUp s^\arrowUp s^\arrowDown s s^\arrowDown s^\arrowDown
  s8^\arrowDown s^\arrowUp s^\arrowDown s4^\arrowDown \grace s16^\arrowSelpe s8^\arrowDown s8^\arrowUp
  s8.^\arrowDown s16^\arrowZeybekB s8^\arrowUp
  s4^\arrowDown \grace s16^\arrowSelpe s8^\arrowDown s8^\arrowUp
  s8.^\arrowDown s16^\arrowZeybekB s8^\arrowUp
  s8.^\arrowDown s16^\arrowZeybekB s8^\arrowUp s8^\arrowUp
  s8^\arrowDown s^\arrowUp s^\arrowUp s^\arrowDown s s16^\arrowDown s^\arrowUp s8^\arrowDown
  s8^\arrowDown s^\arrowUp s^\arrowDown s4^\arrowDown \grace s16^\arrowSelpe s8^\arrowDown s8^\arrowDown
  \repeat volta 4 {
    s4^\arrowDown s8^\arrowDown s4^\arrowDown s^\arrowDown
    s16^\arrowDown s^\arrowUp s8^\arrowDown s^\arrowDown s4^\arrowDown s8^\arrowDown s^\arrowDown
    s8^\arrowDown s^\arrowDown s^\arrowDown s4^\arrowDown s8^\arrowDown s^\arrowUp
    s8^\arrowDown s^\arrowDown s^\arrowDown s4^\arrowDown s8^\arrowDown s^\arrowUp
    s8.^\arrowDown s16^\arrowZeybekB s8^\arrowUp s4^\arrowDown \grace s16^\arrowSelpe s8^\arrowDown s8^\arrowUp
    s8.^\arrowDown s16^\arrowZeybekB s8^\arrowUp s4^\arrowDown \grace s16^\arrowSelpe s8^\arrowDown s8^\arrowDown
    s4^\arrowDown s8^\arrowDown s4^\arrowDown s8^\arrowDown s^\arrowDown
    s8^\arrowDown s^\arrowDown s^\arrowDown s4^\arrowDown s8^\arrowDown s^\arrowUp
    s16^\arrowDown s^\arrowUp s8^\arrowDown s^\arrowDown s4^\arrowDown s8^\arrowDown s^\arrowUp
    s16^\arrowDown s^\arrowUp s8^\arrowDown s^\arrowDown s^\arrowDown s^\arrowUp s^\arrowDown s^\arrowUp
    s4^\arrowDown s8^\arrowDown s^\arrowDown s s16^\arrowDown s^\arrowUp s8^\arrowDown
    s8^\arrowDown s^\arrowUp s^\arrowDown s4^\arrowDown \grace s16^\arrowSelpe s8^\arrowDown s8^\arrowUp
    s8.^\arrowDown s16^\arrowZeybekB s8^\arrowUp
    s4^\arrowDown \grace s16^\arrowSelpe s8^\arrowDown s8^\arrowUp
    s8.^\arrowDown s16^\arrowZeybekB s8^\arrowUp
    s8.^\arrowDown s16^\arrowZeybekB s8^\arrowUp s8^\arrowUp
    s8^\arrowDown s^\arrowUp s^\arrowUp s^\arrowDown s s16^\arrowDown s^\arrowUp s8^\arrowDown
    \volta 1,2,3 {
      s8^\arrowDown s^\arrowUp s^\arrowDown s4^\arrowDown \grace s16^\arrowSelpe s8^\arrowDown s8^\arrowDown
    }
    \volta 4 {
      s8^\arrowDown s^\arrowUp s^\arrowDown s2^\arrowDown
    }
  }
}

\layout {
  indent = #0
  #(set-default-paper-size '(cons (* 210 mm) (* 165 mm)))
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
  