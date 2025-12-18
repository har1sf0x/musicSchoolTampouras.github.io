\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Κάτω στο γιαλό (α)"
pieceSubtitle = "Αιγαίο (Χίος)"
pieceFilename = "Κάτω_στο_γιαλό_α"
source = "https://vmrebetiko.gr/item/?id=4924"
keyA = \setRastKey
keyB = \setRastBKey

melody = \relative c'' {
  \time 2/4
  \sectionLabel "A"
  bfc8-1\arrowDown c16-1\arrowDown c-1\arrowUp d8-1\arrowDown e-3\arrowUp
  d8-1\arrowUp d16-1\arrowDown d-1\arrowUp d8-1\arrowDown \tweak Parentheses.font-size -2 \parenthesize <d-1\arrowUp bfc>
  e8-3\arrowDown d16-1\arrowDown d-1\arrowUp c8-1\arrowDown bfc-1\arrowUp
  d8-3\arrowDown d16-3\arrowDown d-3\arrowDown bfc8-1\arrowDown bfc-1\arrowUp \ERBarline
  \section \break \sectionLabel "B" \set Score.currentBarNumber = #1
  d8-3\arrowDown c16-1\arrowDown bfc-1\arrowUp \ADChord 8 \arrowDown \ADChord 8 \arrowUp
  \RastChord 8 \arrowDown a16-0\arrowDown a-0\arrowUp bfc8-1\arrowDown c-1\arrowUp
  d8-3\arrowDown c16-1\arrowDown bfc-1\arrowUp \ADChord 8 \arrowDown \ADChord 8 \arrowUp
  \RastChord 8 \arrowDown a16-0\arrowDown a-0\arrowUp bfc8-1\arrowDown bfc-1\arrowUp \ERBarline
}

verseOne = \lyricmode {
  \set stanza = "1."
  Κά -- τω _ στο για -- λό __ _ \skip 1 \skip 1 κα -- τω στο _ πε -- ρι -- γιά _ _ -- λί __ _
  κά -- τω _ στο γιά -- λό κό _ -- ντή __ _ νε -- ρα _ -- τζού -- λα φου -- ντω _ -- τή __ _
}

extraVerses = \markup {
  \fill-line {
    \column {
      \line { \bold "1."
        \column {
          "Κάτω στο γιαλό, κατω στο περιγιάλι,"
          "κάτω στο γιαλό κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "2."
        \column {
          "Πλύνουν Χιώτισσες, πλυνουν παπα(δ)οπούλες"
          "πλύνουν Χιώτισσες κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "3."
        \column {
          "Πλύνουν κι άπλωναν, και μεσ’ τον άμμο επαίζαν,"
          "πλύναν κι έπαιζαν κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "4."
        \column {
          "Φύσηξε ο βοριάς, μαΐστρος δραμουντάνας,"
          "φύσηξε ο βοριάς κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "5."
        \column {
          "Κι ανασήκωσε, το μεσοφούστανό της,"
          "κι ανασήκωσε κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "6."
        \column {
          "Και της φάνηκε, το ποδαστράγαλό της,"
          "και της φάνηκε κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "7."
        \column {
          "Κι έλαμψε ο γιαλός, κι ολο το περιγιάλι,"
          "κι έλαμψε ο γιαλός κοντή, νεραντζούλα φουντωτή."
        }
      }
    }
    \column {
      \line { \bold "8."
        \column {
          "Κάτεργο περνά, κι ελάμψαν τ’ άρμενά του,"
          "κάτεργο περνά κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "9."
        \column {
          "Λέει ο ναύκληρος, λεει ο καραβοκύρης,"
          "λέει ο ναύκληρος κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "10."
        \column {
          "Άλα βρε παιδιά, αλα βρε παλικάρια"
          "άλα βρε παιδιά κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "11."
        \column {
          "Ν’ αποσώσομε, σ’ αυτό που λάμπει ομπρός μας,"
          "ν’ αποσώσομε κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "12."
        \column {
          "Κι αν ειν’ κάτεργο, να ’ν’ του καραβοκύρη,"
          "κι αν ειν’ κάτεργο κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "13."
        \column {
          "Κι αν ειν’ μάλαμα, να ’ναι της συντροφιάς μας,"
          "κι αν ειν’ μάλαμα κοντή, νεραντζούλα φουντωτή."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "14."
        \column {
          "Κι αν ειν’ κοπελιά, κι αν είν’ παπαδοπούλα,"
          "κι αν ειν’ κοπελιά κοντή, να ‘ναι του τραγουδιστή."
        }
      }
    }
  }
}

%%%%%%% pdf %%%%%%%
\paper {
  #(set-paper-size "a4")
  top-margin = 2\cm
  left-margin = 1\cm
  right-margin = 1\cm
  indent = #0
}

%%%%%%% svg %%%%%%%
% \paper {
%   paper-width = 210\mm
%   paper-height = 180\mm
%   left-margin = 1\cm
%   right-margin = 1\cm
%   indent = #0
% }

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
            \customScripts #hideArrowsfermataNear
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
            \customScripts #hideArrowsfermataNear
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
            \customScripts #fermataNear
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
            \customScripts #fermataNear
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
            \customScripts #hideArrowsfermataNear
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
            \customScripts #hideArrowsfermataNear
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
            \customScripts #fermataNear
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
            \customScripts #fermataNear
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