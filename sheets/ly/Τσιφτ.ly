\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Τσιφτ"
pieceSubtitle = "Ικόνιο"
pieceFilename = "Τσιφτ"
source = ""
keyA = \setHuzzamKey
keyB = \setHuzzamBKey

melodyA = \relative c'' {
  % \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  \set Score.alternativeNumberingStyle = #'numbers-with-letters
  % \time 2/4
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \setKarsilamTime
  \sectionLabel "A"
  \repeat volta 2 {
    % measure 1
    bfc16-1\arrowDown c-2\arrowUp bfc-1\arrowDown c-2\arrowUp
    d16-1\arrowDown efb-2\arrowUp fb-1\arrowDown g-2\arrowUp
    fb16-1\arrowDown efb-1\arrowUp d-1\arrowDown c-5\arrowDown
    d8-1\arrowDown d-1\arrowUp d-1\arrowDown
    % measure 2
    bfc16-1\arrowDown c-2\arrowUp bfc-1\arrowDown c-2\arrowUp
    d-1\arrowDown efb-1\arrowUp fb-4\arrowDown efb-1\arrowUp
    d-1\arrowDown c-1\arrowUp c-1\arrowDown bfc-1\arrowUp
    bfc8-1\arrowDown 8-1\arrowUp 8-1\arrowDown
  }
  % \section \break \sectionLabel "B" \set Score.currentBarNumber = #1
}

melodyB = \relative c'' {
  \section \break \sectionLabel "B"
  \repeat volta 2 {
    % measure 3
    c8-2\arrowDown c16-2\arrowDown bfc-1\arrowUp
    c8-2\arrowDown c16-2\arrowDown bfc-1\arrowUp
    c16-2\arrowDown bfc-1\arrowUp c-1\arrowDown d-1\arrowUp
    efc16-3\arrowDown d-1\arrowUp c-1\arrowDown bfc-1\arrowUp \ADAChord 16 \arrowDown (g-0)
    % measure 4
    bfc16-1\arrowDown c-2\arrowUp d-1\arrowDown efc-3\arrowUp
    d16-1\arrowDown c-1\arrowUp c-1\arrowDown bfc-1\arrowUp
    bfc8-1\arrowDown bfc16-1\arrowUp g16-0\arrowDown bfc8-1\arrowDown 8-1\arrowUp 8-1\arrowDown 
  }
}

melodyC = \relative c'' {
  \section \break \sectionLabel "Γ"
  \repeat volta 2 {
    % measure 5
    g'8-2 \arrowDownStop g16-2\arrowSilifke g-2\arrowUp
    g8-2\arrowDownStop g16-2\arrowSilifke g-2\arrowUp
    g8-2\arrowDownStop \hiddenGraceArrow \arrowSilifkeB fb16-1\arrowDown efb-1\arrowUp
    g8-2\arrowDown fb16-1\arrowDown efb-1\arrowUp efb-1\arrowDown d-1\arrowUp
    \alternative {
      \volta 1 {
        % measure 6a
        d8-1\arrowDownStop d16-1\arrowSilifke d-1\arrowUp
        d8-1\arrowDownStop d16-1\arrowSilifke d-1\arrowUp
        fb8-1\arrowDown g32-2\arrowDown (fb-1) g16-1\arrowUp
        a8-3\arrowDown a-3\arrowUp a-3\arrowDown
      }
      \volta 2 {
        % measure 6a
        d,8-1\arrowDownStop d16-1\arrowSilifke d-1\arrowUp
        d8-1\arrowDownStop d16-1\arrowSilifke efc-3\arrowUp
        d16-1\arrowDown c-1\arrowUp bfc-5\arrowDown c-1\arrowUp
        d8-1\arrowDown d-1\arrowUp d-1\arrowDown
      }
    }
  }
}

melodyD = \relative c'' {
  \section \break \sectionLabel "Δ"
  \repeat volta 2 {
    % measure 7
    bfc16-1\arrowDown c-2\arrowUp d8-1\arrowDown d-1\arrowDown d-1\arrowUp
    d16.-1\arrowDown (efc32-3) d16-1\arrowDown c-5\arrowDown
    d8-1\arrowDown d-1\arrowUp c-5\arrowDown
    % measure 8
    d16.-1\arrowDown (efc32-3) d16-1\arrowDown c-5\arrowDown
    d8-1\arrowDown efc16-3\arrowDown d-1\arrowUp
    d16-1\arrowDown c-1\arrowUp c-1\arrowDown bfc-1\arrowUp
    bfc8-1\arrowDown 8-1\arrowUp 8-1\arrowDown
    % measure 9
    c8-1\arrowDown d-1\arrowUp d-1\arrowDown d-1\arrowUp
    efc16-3\arrowDown d-1\arrowUp c-1\arrowDown bfc-1\arrowUp
    c8-2\arrowDown c-2\arrowUp bfc-1\arrowDown
    \alternative {
      \volta 1 {
        % measure 10a
        fb'8-1\arrowDown efb16-2\arrowDown d-1\arrowUp
        d16-1\arrowDown c-1\arrowUp c-1\arrowDown bfc-1\arrowUp
        bfc8.-1\arrowDown c16-2\arrowUp
        bfc16-1\arrowDown c-1\arrowUp d8-3\arrowDown d-3\arrowUp
      }
      \volta 2{
        % measure 10a
        fb8-1\arrowDown efb16-2\arrowDown d-1\arrowUp
        d16-1\arrowDown c-1\arrowUp c-1\arrowDown bfc-1\arrowUp
        bfc8-1\arrowDown bfc16-1\arrowUp g16-0\arrowDown
        bfc8-1\arrowDown 8-1\arrowUp 8-1\arrowDown
        \jump "D.C." \fine
      }
    }
  }
}

pieceOrig = {
  \keyA
  \melodyA
  \once \override Staff.KeySignature.color = #red
  \setSegahKey
  \melodyB
  \once \override Staff.KeySignature.color = #red
  \setHuzzamKey
  \melodyC
  \once \override Staff.KeySignature.color = #red
  \setSegahKey
  \melodyD
}

pieceTrans = {
  \keyB
  \transpose g c \melodyA
  \once \override Staff.KeySignature.color = #red
  \setSegahBKey
  \transpose g c \melodyB
  \once \override Staff.KeySignature.color = #red
  \setHuzzamBKey
  \transpose g c \melodyC
  \once \override Staff.KeySignature.color = #red
  \setSegahBKey
  \transpose g c \melodyD
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
  paper-height = 160\mm
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