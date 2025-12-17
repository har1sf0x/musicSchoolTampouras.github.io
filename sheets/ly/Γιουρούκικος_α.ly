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
  \repeat unfold 2 {g'8.-1\arrowDown fb16-1\arrowZeybekB g8-2\arrowUp fb-1\arrowUp g-2\arrowDown fb-1\arrowUp
  e4-1\arrowDown e8-1\arrowDown d-1\arrowUp g8.-1\arrowDown fb16-1\arrowZeybekB g8-2\arrowUp fb-1\arrowUp e4-1\arrowDown r4\arrowDown \noBreak}
  \section \break \sectionLabel "B" \set Score.currentBarNumber = #1
  bfc8.-1\arrowDown c16-1\arrowZeybekB d4-1\arrowUp e-3\arrowUp bfc8.-1\arrowDown c16-1\arrowZeybekB d8-1\arrowUp e-3\arrowUp
  c8.-3\arrowDown bfc32-1\arrowUpSmall a-0\arrowDownSmall bfc8-1\arrowUp g-0\arrowDown \ADChord 4 \arrowDown r4\arrowDown
  bfc8.-1\arrowDown c16-1\arrowZeybekB d4-1\arrowUp e-3\arrowUp bfc8-1\arrowDown c16-1\arrowUp c-1\arrowDown d-1\arrowUp d-1\arrowDown e8-3\arrowUp
  c8.-3\arrowDown bfc32-1\arrowUpSmall a-0\arrowDownSmall bfc8-1\arrowUp g-0\arrowDown \ADChord 4 \arrowDown r4\arrowDown
  \section \break \sectionLabel "Γ" \set Score.currentBarNumber = #1
  \repeat unfold 2 {
    g8-0\arrowDown bfc-1\arrowUp bfc8.-1\arrowDown bfc32-1\arrowUpSmall a-0\arrowDownSmall bfc8-1\arrowUp a-0\arrowUp
    bfc8.-1\arrowDown bfc32-1\arrowUpSmall a-0\arrowDownSmall bfc8-1\arrowUp d-3\arrowUp
    c-1\arrowDown c-1\arrowUp bfc16-5\arrowTalipOzkan (a g8) \ADChord 4 \arrowDown r4\arrowDown \noBreak
  }
  \section \break \sectionLabel "Δ" \set Score.currentBarNumber = #1
  \repeat unfold 2 {
    \RastChord 8. \arrowDown \BfcGDChord 16 \arrowZeybekB (\BfcGDChord 8 \arrowUp) \RastChord 8^"" (\BfcGDChord 8 \arrowUp) \RastChord 8^""
    \BfcGDChord 8. \arrowDown \RastChord 16 \arrowZeybekB \BfcGDChord 8 \arrowUp d'8-3\arrowUp
    c-1\arrowDown c-1\arrowUp bfc16-5\arrowTalipOzkan (a g8) \ADChord 4 \arrowDown r4\arrowDown \noBreak
  } \FBarline
}
pieceNotesB = \new Voice \relative c'' {
  \repeat unfold 8 {s4*8 s8 s8\arrowUp}
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
  paper-height = 135\mm
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
        <<\pieceNotes \pieceNotesB>>
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
        <<\pieceNotes \pieceNotesB>>
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
        <<\pieceNotes \pieceNotesB>>
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
        <<\pieceNotes \pieceNotesB>>
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
        \transpose g c <<\pieceNotes \pieceNotesB>>
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
        \transpose g c <<\pieceNotes \pieceNotesB>>
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
        \transpose g c <<\pieceNotes \pieceNotesB>>
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
        \transpose g c <<\pieceNotes \pieceNotesB>>
      }
    }
  }
}