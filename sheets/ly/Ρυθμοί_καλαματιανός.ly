\version "2.24.4"

\include "utilities_01.ly"

pieceName = "7/8 Καλαματιανό"
pieceSubtitle = ""
pieceFilename = "ρυθμοί_Καλαματιανός"

pieceNotes = \new Voice \relative c'' {
  \setKalamTime
  \sectionLabel "1"
  <<\single \greyNote g8 \single \greyNote d d'8>> <<\single \greyNote g,8 \single \greyNote d d'8>> <<\single \greyNote g,8 \single \greyNote d d'8>>
  <<\single \greyNote g,8 \single \greyNote d d'8>> <<\single \greyNote g,8 \single \greyNote d d'8>>
  <<\single \greyNote g,8 \single \greyNote d d'8>> <<\single \greyNote g,8 \single \greyNote d d'8>> \FBarline
  \sectionLabel "2"
  <<\single \greyNote g,4 \single \greyNote d d'4>> <<\single \greyNote g,8 \single \greyNote d d'8>>
  <<\single \greyNote g,8 \single \greyNote d d'8>> <<\single \greyNote g,8 \single \greyNote d d'8>>
  <<\single \greyNote g,8 \single \greyNote d d'8>> <<\single \greyNote g,8 \single \greyNote d d'8>> \FBarline
  \break
  \sectionLabel "3α" \set Score.currentBarNumber = #1
  <<\single \greyNote g,4 \single \greyNote d d'4>> <<\single \greyNote g,8 \single \greyNote d d'8>>
  <<\single \greyNote g,4 \single \greyNote d d'4>>
  <<\single \greyNote g,8 \single \greyNote d d'8>> <<\single \greyNote g,8 \single \greyNote d d'8>>\FBarline
  \sectionLabel "3β"
  <<\single \greyNote g,4 \single \greyNote d d'4>> <<\single \greyNote g,8 \single \greyNote d d'8>>
  <<\single \greyNote g,4 \single \greyNote d d'4>>
  <<\single \greyNote g,8 \single \greyNote d d'8>> <<\single \greyNote g,8 \single \greyNote d d'8>>\FBarline
  \break
  \sectionLabel "4α" \set Score.currentBarNumber = #1
  <<\single \greyNote g,4 \single \greyNote d d'4>> <<\single \greyNote g,8 \single \greyNote d d'8>>
  <<\single \greyNote g,4 \single \greyNote d d'4>>
  \grace {<<\single \greyNote g,16 \single \greyNote d d'16>>}
  <<\single \greyNote g,8 \single \greyNote d d'8>> <<\single \greyNote g,8 \single \greyNote d d'8>>\FBarline
  \sectionLabel "4β1"
  <<\single \greyNote g,4 \single \greyNote d d'4>> <<\single \greyNote g,8 \single \greyNote d d'8>>
  <<\single \greyNote g,4 \single \greyNote d d'4>>
  \grace {<<\single \greyNote g,16 \single \greyNote d d'16>>}
  <<\single \greyNote g,8 \single \greyNote d d'8>> <<\single \greyNote g,8 \single \greyNote d d'8>>\FBarline
  \sectionLabel "4β2"
  <<\single \greyNote g,4 \single \greyNote d d'4>> <<\single \greyNote g,8 \single \greyNote d d'8>>
  <<\single \greyNote g,4 \single \greyNote d d'4>>
  <<\single \greyNote g,8 \single \greyNote d d'8>> <<\single \greyNote g,8 \single \greyNote d d'8>>\FBarline
}
pieceArrows = \new Voice {
  s8^\arrowDown s^\arrowUp s^\arrowUp
  s^\arrowDown s^\arrowUp
  s^\arrowDown s^\arrowUp
  
  s4^\arrowDown s8^\arrowUp
  s^\arrowDown s^\arrowUp
  s^\arrowDown s^\arrowUp
  
  s4^\arrowDown s8^\arrowUp
  s4^\arrowDown
  s8^\arrowDown s^\arrowUp
  
  s4^\arrowDown s8^\arrowUp
  s4^\arrowDown
  s8^\arrowUp s^\arrowUp
  
  s4^\arrowDown s8^\arrowZeybek
  s4^\arrowDown \grace s16^\arrowSelpe
  s8^\arrowDown s^\arrowUp
  
  s4^\arrowDown s8^\arrowZeybek
  s4^\arrowDown \grace s16^\arrowZeybekB
  s8^\arrowUp s^\arrowUp
  
  s4^\arrowDown s8^\arrowZeybek
  s4^\arrowDown
  s8^\arrowZeybek s^\arrowUp
}

\layout {
  indent = #0
  #(set-default-paper-size '(cons (* 210 mm) (* 90 mm)))
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
        \setZeybekTime
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
        \setZeybekTime
        <<
          \transpose g c \pieceNotes
          \pieceArrows
        >>
      }
    }
  }
}
  