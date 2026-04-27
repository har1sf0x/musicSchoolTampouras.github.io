\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Μαζωμένος"
pieceSubtitle = "Μυτιλήνη"
pieceFilename = "Μαζωμένος"
source = ""
keyA = \key g \minor
keyB = \key c \minor

melodyA = \relative c'' {
  % \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  \set Score.alternativeNumberingStyle = #'numbers-with-letters
  \time 2/4
  % \setZeybekTime
  \sectionLabel "A"
  \repeat volta 2 {
    % measures 1 & 2
    \repeat unfold 2 {
      bfk16-5\arrowDown a-0\arrowUp g8-0\arrowDown d-0\arrowDown g-0\arrowDown
    }
    % measure 3
    bfk16-5\arrowDown a-0\arrowUp bfk-5\arrowDown c-1\arrowUp
    d16-3\arrowDown c-1\arrowUp bfk-5\arrowDown a-0\arrowUp
    \alternative {
      \volta 1 {
        % measure 4a
        g16-0\arrowDown a-0\arrowUp bfk-5\arrowDown c-1\arrowUp d4-3\arrowDown
      }
      \volta 2 {
        % measure 4b
        g,8-0\arrowDown d-0\arrowDown g4-0\arrowDown
        \fine
      }
    }
  }
  \section \break \sectionLabel "B" % \set Score.currentBarNumber = #1
  \repeat volta 2 {
    % measure 5
    d'8-1\arrowDown d16-1\arrowUp (f-3) efk8-1\arrowDown efk16-1\arrowUp (f-3)
    % measure 6
    d8-1\arrowDown d16-1\arrowUp (efk-2) c4-1\arrowDown
    % measure 7
    bfk16-5\arrowDown a-0\arrowUp bfk-5\arrowDown c-1\arrowUp
    d16-3\arrowDown c-1\arrowUp bfk-5\arrowDown a-0\arrowUp
    \alternative {
      \volta 1 {
        % measure 8a
        g16-0\arrowDown a-0\arrowUp bfk-5\arrowDown c-1\arrowUp d4-3\arrowDown
      }
      \volta 2 {
        % measure 8b
        g,8-0\arrowDown d-0\arrowDown g4-0\arrowDown
      }
    }
  }
  \section \break \sectionLabel "Γ" % \set Score.currentBarNumber = #1
  \repeat volta 2 {
    % measure 9
    f8-3\arrowDown bfk~-1\arrowDown bfk a16-5\arrowDown bfk-1\arrowUp
    % measure 10
    c8-1\arrowDown bfk16-5\arrowDown a-0\arrowUp g4-0\arrowDown
    % measure 11
    bfk16-5\arrowDown a-0\arrowUp bfk-5\arrowDown c-1\arrowUp
    d16-3\arrowDown c-1\arrowUp bfk-5\arrowDown a-0\arrowUp
    \alternative {
      \volta 1 {
        % measure 12a
        g16-0\arrowDown a-0\arrowUp bfk-5\arrowDown c-1\arrowUp d4-3\arrowDown
      }
      \volta 2 {
        % measure 12b
        g,8-0\arrowDown d-0\arrowDown g4-0\arrowDown \DBarline
        \jump "D.C. al Fine"
      }
    }
  }
}

melodyB = \relative c'' {
  \setZeybekTime
  \section \break \sectionLabel "B"
  g'2 fb4 efb d c bfc afb g
}

pieceOrig = {
  \keyA
  \melodyA
  % \setHicazkarKey
  % \melodyB
}

pieceTrans = {
  \keyB
  \transpose g c \melodyA
  % \setHicazkarBKey
  % \transpose g c \melodyB
}

verseOne = \lyricmode {
  % \new Lyrics {
  %   \set associatedVoice = "one"
  %   \repeat unfold 5 {\skip 1} %"1α."
  %   \override StanzaNumber.font-series = #'medium
  %   \set stanza = "1α."
  %   Χρι -- στού -- γεν _ -- να, Πρω -- τού -- γεν _ -- να πρώ -- τη -- γιορ _ -- τή _ του χρό _ _ -- νου, για
  % }
  % \set fontSize = #-2 
  % <<
  %   \new Lyrics {
  %     \set associatedVoice = "one"
  %     \set stanza = "1α."
  %     Χρι -- στού -- γεν _ -- να, Πρω -- τού -- γεν _ -- να πρώ -- τη -- γιορ _ -- τή _ του χρό _ _ -- νου, για
  %   }
  %   \new Lyrics {
  %     \set associatedVoice = "one"
  %     \set stanza = "1β."
  %     για 'βγά -- τε _ ιδέ -- στε μά -- θε _ -- τε ν'οπ' ο Χρι _ -- στός _ γεν -- νιέ _ _ -- ται. Γεν... πόρ -- τα
  %   }
  % >>
}

extraVerses = \markup {
  % \abs-fontsize #10
  % \fill-line {
  %   \column {
  %     \line { \bold "1."
  %       \column {
  %         "Κάτω στο γιαλό, κατω στο περιγιάλι,"
  %         "κάτω στο γιαλό κοντή, νεραντζούλα φουντωτή."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "2."
  %       \column {
  %         "Πλύνουν Χιώτισσες, πλυνουν παπα(δ)οπούλες"
  %         "πλύνουν Χιώτισσες κοντή, νεραντζούλα φουντωτή."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "3."
  %       \column {
  %         "Πλύνουν κι άπλωναν, και μεσ’ τον άμμο επαίζαν,"
  %         "πλύναν κι έπαιζαν κοντή, νεραντζούλα φουντωτή."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "4."
  %       \column {
  %         "Φύσηξε ο βοριάς, μαΐστρος δραμουντάνας,"
  %         "φύσηξε ο βοριάς κοντή, νεραντζούλα φουντωτή."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "5."
  %       \column {
  %         "Κι ανασήκωσε, το μεσοφούστανό της,"
  %         "κι ανασήκωσε κοντή, νεραντζούλα φουντωτή."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "6."
  %       \column {
  %         "Και της φάνηκε, το ποδαστράγαλό της,"
  %         "και της φάνηκε κοντή, νεραντζούλα φουντωτή."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "7."
  %       \column {
  %         "Κι έλαμψε ο γιαλός, κι ολο το περιγιάλι,"
  %         "κι έλαμψε ο γιαλός κοντή, νεραντζούλα φουντωτή."
  %       }
  %     }
  %   }
  %   \column {
  %     \line { \bold "8."
  %       \column {
  %         "Κάτεργο περνά, κι ελάμψαν τ’ άρμενά του,"
  %         "κάτεργο περνά κοντή, νεραντζούλα φουντωτή."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "9."
  %       \column {
  %         "Λέει ο ναύκληρος, λεει ο καραβοκύρης,"
  %         "λέει ο ναύκληρος κοντή, νεραντζούλα φουντωτή."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "10."
  %       \column {
  %         "Άλα βρε παιδιά, αλα βρε παλικάρια"
  %         "άλα βρε παιδιά κοντή, νεραντζούλα φουντωτή."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "11."
  %       \column {
  %         "Ν’ αποσώσομε, σ’ αυτό που λάμπει ομπρός μας,"
  %         "ν’ αποσώσομε κοντή, νεραντζούλα φουντωτή."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "12."
  %       \column {
  %         "Κι αν ειν’ κάτεργο, να ’ν’ του καραβοκύρη,"
  %         "κι αν ειν’ κάτεργο κοντή, νεραντζούλα φουντωτή."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "13."
  %       \column {
  %         "Κι αν ειν’ μάλαμα, να ’ναι της συντροφιάς μας,"
  %         "κι αν ειν’ μάλαμα κοντή, νεραντζούλα φουντωτή."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "14."
  %       \column {
  %         "Κι αν ειν’ κοπελιά, κι αν είν’ παπαδοπούλα,"
  %         "κι αν ειν’ κοπελιά κοντή, να ‘ναι του τραγουδιστή."
  %       }
  %     }
  %   }
  % }
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
%   paper-height = 120\mm
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
  \override LyricText.font-size=#-2
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
  \omit Fingering
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
            \pieceOrig
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
  \undo \omit Fingering
}
\book {
  \bookOutputName #(string-append pieceFilename "_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #hideArrowsArticulationNear
            \pieceOrig
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
  \omit Fingering
}
\book {
  \bookOutputName #(string-append pieceFilename "_πενιές")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #articulationNear
            \pieceOrig
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
  \undo \omit Fingering
}
\book {
  \bookOutputName #(string-append pieceFilename "_πενιές_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #articulationNear
            \pieceOrig
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
  \omit Fingering
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #hideArrowsArticulationNear
            \pieceTrans
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
  \undo \omit Fingering
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #hideArrowsArticulationNear
            \pieceTrans
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
  \omit Fingering
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_πενιές")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #articulationNear
            \pieceTrans
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
  \undo \omit Fingering
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_πενιές_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            \customScripts #articulationNear
            \pieceTrans
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