\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Γιουρούκικος (α)"
pieceSubtitle = "Μυτιλήνη, Απτάλικος"
pieceFilename = "Γιουρούκικος_α"
keyA = \setHuseyniKey
keyB = \setHuseyniBKey

pieceNotes = \new Voice \relative c'' {
  \setZeybekTime
  \section \sectionLabel "A"
  \repeat unfold 2 {g'8. fb16 g8 fb g fb e4 e8 d g8. fb16 g8 fb e4 r \noBreak}
  \section \break \sectionLabel "B" \set Score.currentBarNumber = #1
  bfc8. c16 d4 e bfc8. c16 d8 e c8. bfc32 a bfc8 g <<a4 d, a'>> r
  bfc8. c16 d4 e bfc8 c16 c d d e8 c8. bfc32 a bfc8 g <<a4 d, a'>> r
  \section \break \sectionLabel "Γ" \set Score.currentBarNumber = #1
  \repeat unfold 2 {g8 bfc bfc8. bfc32 a bfc8 a bfc8. a16 bfc8 d c c bfc16 (a g8) <<a4 d, a'>> r \noBreak}
  \section \break \sectionLabel "Δ" \set Score.currentBarNumber = #1
  \repeat unfold 2 {
    <<g8. \single \greyNote d' g,>> <<g16 bfc g>> <<g8 bfc g~>> g <<g8 bfc g~>> g
    <<g8. bfc g>> <<g16 \single \greyNote d' g,>> <<g8 bfc g>> d' c c bfc16 (a g8) <<a4 d, a'>> r \noBreak
  } \FBarline
}
pieceArrows = \new Voice {
  \repeat unfold 2 {
    s8.^\arrowDown s16^\arrowZeybekB s8^\arrowUp s^\arrowUp s^\arrowDown s^\arrowUp
    s4^\arrowDown s8^\arrowDown s^\arrowUp s8.^\arrowDown s16^\arrowZeybekB
    s8^\arrowUp s^\arrowUp s4^\arrowDown s8^\arrowDown s^\arrowUp
  }
    
    s8.^\arrowDown s16^\arrowZeybekB s4^\arrowUp s^\arrowUp
    s8.^\arrowDown s16^\arrowZeybekB s8^\arrowUp s^\arrowUp
    s8.^\arrowDown s32^\arrowUpSmall s^\arrowDownSmall s8^\arrowUp s^\arrowDown
    s4^\arrowDown s8^\arrowDown s^\arrowUp
    
    s8.^\arrowDown s16^\arrowZeybekB s4^\arrowUp s^\arrowUp
    s8^\arrowDown s16^\arrowUp s^\arrowDown s^\arrowUp s^\arrowDown s8^\arrowUp
    s8.^\arrowDown s32^\arrowUpSmall s^\arrowDownSmall s8^\arrowUp s^\arrowDown
    s4^\arrowDown s8^\arrowDown s^\arrowUp
    
    \repeat unfold 2 {
      s8^\arrowDown s^\arrowUp s8.^\arrowDown s32^\arrowUpSmall s^\arrowDownSmall
      s8^\arrowUp s^\arrowUp s8.^\arrowDown s16^\arrowZeybekB s8^\arrowUp s^\arrowUp
      s8^\arrowDown s^\arrowUp s16^\arrowTalipOzkan (s s8) s4^\arrowDown s8^\arrowDown s^\arrowUp
    }
    
    s8.^\arrowDown s16^\arrowZeybekB s4^\arrowUp s^\arrowUp
    s8.^\arrowDown s16^\arrowSelpe s8^\arrowDown s^\arrowUp
    s8^\arrowDown s^\arrowUp s16^\arrowTalipOzkan (s s8) s4^\arrowDown s8^\arrowDown s^\arrowUp
    
    s8.^\arrowDown s16^\arrowZeybekB s4^\arrowUp s^\arrowUp
    s8.^\arrowDown s16^\arrowSelpe s8^\arrowDown s^\arrowUp
    s8^\arrowDown s^\arrowUp s16^\arrowTalipOzkan (s s8) s4^\arrowDown s4
}

\layout {
  indent = #0
  #(set-default-paper-size '(cons (* 210 mm) (* 125 mm)))
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
  