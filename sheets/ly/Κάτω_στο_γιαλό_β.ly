\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Κάτω στο γιαλό (β)"
pieceSubtitle = "Αιγαίο (Χίος)"
pieceFilename = "Κάτω_στο_γιαλό_β"
source = "https://vmrebetiko.gr/item/?id=4924"
keyA = \setRastKey
keyB = \setRastBKey

melody = \relative c'' {
  \time 2/4
  \sectionLabel "A"
  bfc8-1\arrowDown c16-1\arrowDown c-1\arrowUp d8-1\arrowDown e-3\arrowUp
  d8-1\arrowUp d16-1\arrowDown d-1\arrowUp d8-1\arrowDown d-1\arrowUp
  e8-3\arrowDown d16-1\arrowDown d-1\arrowUp c8-1\arrowDown bfc-1\arrowUp
  c16-3\arrowDown (bfc-1) c-1\arrowDown d-3\arrowUp bfc8-1\arrowDown bfc-1\arrowUp \ERBarline
  % d8-3\arrowDown d16-3\arrowDown d-3\arrowDown bfc8-1\arrowDown bfc-1\arrowUp \ERBarline

  \section \break \sectionLabel "B" \set Score.currentBarNumber = #1
  d8-3\arrowDown c16-1\arrowDown bfc-1\arrowUp \ADAChord 8 \arrowDown \ADAChord 8 \arrowUp
  \RastChord 8 \arrowDown a16-0\arrowDown a-0\arrowUp bfc8-1\arrowDown c-1\arrowUp
  d8-3\arrowDown c16-1\arrowDown bfc-1\arrowUp \ADAChord 8 \arrowDown \ADAChord 8 \arrowUp
  \RastChord 8 \arrowDown a16-0\arrowDown a-0\arrowUp bfc8-1\arrowDown bfc-1\arrowUp \ERBarline

  \section \sectionLabel "Γ" \set Score.currentBarNumber = #1
  d16-1\arrowDown (efb-1) fb-4\arrowDown efb-1\arrowUp d8-1\arrowDown d16-1\arrowUp (c)
  d16-1\arrowDown (efb-2) d-1\arrowDown c-1\arrowUp bfc-1\arrowDown (a-0) bfc-1\arrowUp (c-1)
  d16-1\arrowDown (efb-1) fb-4\arrowDown efb-1\arrowUp d8-1\arrowDown d16-1\arrowUp (c)
  d16-1\arrowDown (efb-2) d-1\arrowDown c-1\arrowUp bfc-1\arrowDown (a-0) bfc8-1\arrowUp \ERBarline
}

verseOne = \lyricmode {
  \set stanza = "1."
  Κά -- τω _ στο για -- λό __ _ \skip 1 \skip 1 κα -- τω στο _ πε -- ρι -- γιά _ _ -- λί __ _
  πλέ -- ναν _ ό -- μορ -- φες κό _ -- ντή __ _ νε -- ρα _ -- τζού -- λα φου -- ντω _ -- τή __ _
}

extraVerses = \markup {
  \fill-line {
    \column {
      \line { \bold "1."
        \column {
          "Κάτω στο γιαλό, κατω στο περιγιάλι,"
          "πλέναν όμορφες κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "2."
        \column {
          "Πλέναν κι άπλωναν, και με την άμμο επαίζαν,"
          "πλέναν κι άπλωναν κοντή, νεραντζούλα φουντωτή."
        }
      }
    }
    \column {
      \line { \bold "3."
        \column {
          "Πλέναν κι άπλωναν, τ' αντρώς των τα βελούδα,"
          "πλέναν κι άπλωναν κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "4."
        \column {
          "Και μια όμορφη, και μια παπαδοπούλα,"
          "και μια όμορφη κοντή, νεραντζούλα φουντωτή."
        }
      }
    }
  }
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
  paper-height = 150\mm
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
        <<
          \new Voice = "one" {
            \customScripts #hideArrowsArticulationNear
            \keyA
            \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}
\layout {
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
}
\book {
  \bookOutputName #(string-append pieceFilename "_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #hideArrowsArticulationNear
            \keyA
            \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}


\layout {
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
}
\book {
  \bookOutputName #(string-append pieceFilename "_πενιές")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #articulationNear
            \keyA
            \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}
\layout {
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
}
\book {
  \bookOutputName #(string-append pieceFilename "_πενιές_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #articulationNear
            \keyA
            \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}
\layout {
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #hideArrowsArticulationNear
            \keyB
            \transpose g c \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}
\layout {
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #hideArrowsArticulationNear
            \keyB
            \transpose g c \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}
\layout {
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_πενιές")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #articulationNear
            \keyB
            \transpose g c \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}
\layout {
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_πενιές_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #articulationNear
            \keyB
            \transpose g c \melody
          }
          \new Lyrics \lyricsto "one" {
            \verseOne
          }
        >>
      }
    }
    \extraVerses
  }
}