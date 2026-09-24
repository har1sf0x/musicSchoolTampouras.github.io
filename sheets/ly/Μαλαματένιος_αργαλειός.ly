\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Μαλαματένιος αργαλειός"
pieceSubtitle = "Σινασός, Καππαδοκία"
pieceFilename = "Μαλαματένιος_αργαλειός"
source = ""
keyA = \setRastKey
keyB = \setRastBKey

melodyA = \relative c'' {
  \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  \set Score.dalSegnoTextFormatter = #(lambda (context repeat-count markups) #{ \markup \right-column { "D.S. al Coda 6V" } #})
  \set Score.alternativeNumberingStyle = #'numbers-with-letters
  \time 2/4
  \partial 4
  r8 \customDuoChord d g -0 8 \arrowUp
  \section
  % \tweak extra-offset #'(-1. . -3.5)
  \sectionLabel "A"
  \repeat volta 2 {
    % measure 1
    \RastChord 8 \arrowDown \RastChord 16 \arrowDown \RastChord 16 \arrowUp \ADAChord 8 \arrowDown \ADAChord 8 \arrowUp
    % measure 2
    bfc8-1\arrowDown bfc16-1\arrowDown bfc16-1\arrowUp c8-3\arrowDown bfc8-1\arrowUp
    \alternative {
      \volta 1 {
        % measure 3a
        \ADAChord 8 \arrowDown a16-0\arrowDown a16-0\arrowUp bfc8-1\arrowDown a8-0\arrowUp
        % measyre 4a
        \RastChord 8 \arrowDown \RastChord 16 \arrowDown \RastChord 16 \arrowUp
        \customDuoChord d g -0 8 \arrowDown \customDuoChord d g -0 8 \arrowUp
      }
      \volta 2 {
        % measure 3b
        \ADAChord 8 \arrowDown a16-0\arrowDown a16-0\arrowUp bfc16-1\arrowDown (a16-0) \RastChord 16 \arrowUp (\FbCbChord 16 \noArrow)
        % measure 4b
        \RastChord 8 \arrowDown \RastChord 16 \arrowDown \RastChord 16 \arrowUp
        \RastChord 8 \arrowDown bfc8-1\arrowUp
      }
    }
  }
  \section \break \sectionLabel "B" %\set Score.currentBarNumber = #1
  \repeat volta 2 {
    % measure 5
    c8-1\arrowDown c16-1\arrowDown c16-1\arrowUp c8-1\arrowDown bfc8-5\arrowDown
    % measure 6
    \ADAChord 8 \arrowDown a16-0\arrowDown a16-0\arrowUp c16-3\arrowDown (bfc16-1) c16-1\arrowUp (d16-3)
    \alternative {
      \volta 1 {
        % measure 7a
        bfc8-1\arrowDown bfc16-1\arrowDown bfc16-1\arrowUp bfc16-1\arrowDown (a16-0) bfc16-1\arrowUp (d16-3)
      }
      \volta 2 {
        % measure 7b
        bfc8-1\arrowDown bfc16-1\arrowDown bfc16-1\arrowUp bfc8-1\arrowDown \customDuoChord d g -0 8 \arrowUp
      }
    }
  }
  \section \break \sectionLabel "Α" %\set Score.currentBarNumber = #1
  \repeat segno 7 {
  \repeat volta 2 {
    % measure 8
    \RastChord 8 \arrowDown \RastChord 16 \arrowDown \RastChord 16 \arrowUp \ADAChord 8 \arrowDown \ADAChord 8 \arrowUp
    % measure 9
    bfc8-1\arrowDown bfc16-1\arrowDown bfc16-1\arrowUp c8-3\arrowDown bfc8-1\arrowUp
    \alternative {
      \volta 1 {
        % measure 10a
        \ADAChord 8 \arrowDown a16-0\arrowDown a16-0\arrowUp bfc8-1\arrowDown a8-0\arrowUp
        % measyre 11a
        \RastChord 8 \arrowDown \RastChord 16 \arrowDown \RastChord 16 \arrowUp
        \customDuoChord d g -0 8 \arrowDown \customDuoChord d g -0 8 \arrowUp
      }
      \volta 2 {
        % measure 10b
        \ADAChord 8 \arrowDown a16-0\arrowDown a16-0\arrowUp bfc16-1\arrowDown (a16-0) \RastChord 16 \arrowUp (\FbCbChord 16 \noArrow)
        % measure 11b
        \RastChord 8 \arrowDown \RastChord 16 \arrowDown \RastChord 16 \arrowUp
        \RastChord 8 \arrowDown bfc8-1\arrowUp
      }
    }
  }
  \section \break \sectionLabel "Β'" %\set Score.currentBarNumber = #1
  \repeat volta 2 {
    % measure 12
    c8-1\arrowDown c16-1\arrowDown c16-1\arrowUp c8-1\arrowDown bfc8-5\arrowDown
    % measure 13
    \ADAChord 8 \arrowDown a16-0\arrowDown a16-0\arrowUp bfc16-1\arrowDown (c16-1) d16-3\arrowUp (c16-1)
    \alternative {
      \volta 1 {
        % measure 14a
        bfc8-1\arrowDown bfc16-1\arrowDown bfc16-1\arrowUp bfc8-1\arrowDown bfc8-1\arrowUp
      }
      \volta 2 {
        % measure 14b
        bfc8-1\arrowDown bfc16-1\arrowDown bfc16-1\arrowUp bfc16-1\arrowDown (a16-0) bfc16-1\arrowUp (d16-3)
      }
    }
  }
  \section \break \sectionLabel "B" %\set Score.currentBarNumber = #1
  \repeat volta 2 {
    % measure 15
    c8-1\arrowDown c16-1\arrowDown c16-1\arrowUp c8-1\arrowDown bfc8-5\arrowDown
    % measure 16
    \ADAChord 8 \arrowDown a16-0\arrowDown a16-0\arrowUp c16-3\arrowDown (bfc16-1) c16-1\arrowUp (d16-3)
    \alternative {
      \volta 1 {
        % measure 17a
        bfc8-1\arrowDown bfc16-1\arrowDown bfc16-1\arrowUp bfc16-1\arrowDown (a16-0) bfc16-1\arrowUp (d16-3)
      }
      \volta 2 \volta #'() {
        % measure 17b
        \codaMark 1
        bfc8-1\arrowDown bfc16-1\arrowDown bfc16-1\arrowUp bfc8-1\arrowDown \customDuoChord d g -0 8 \arrowUp
      }
    }
  }
  }
  \section \sectionLabel "Coda"
  bfc2 \fine
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
  \new Lyrics {
    \set associatedVoice = "one"
    \repeat unfold 50 {\skip 1} %"1α."
    \override StanzaNumber.font-series = #'medium
    \set stanza = "1."
    Μα --
    \repeat volta 2 {
      <<
        { λα _ _ -- μα _ -- τέ _ _ -- νιος _ }
        \new Lyrics {
          \set associatedVoice = "one"
          λε _ _ -- φα _ -- ντέ _ _ -- νιο _
        }
      >>
      \alternative {
        \volta 1 {
          αρ _ _ _ -- γα -- λειός _ _ κιε _ --
        }
        \volta 2 {
          χτέ _ _ _ _ -- νι _ _ _ κιε --
        }
      }
    }
    \repeat volta 2 {
      <<
        { να κορ _ -- μί κια -- μάν _ _ α _ -- }
        \new Lyrics {
          \set associatedVoice = "one"
          να κορ _ -- μί αγ -- γε _ _ -- λι _ --
        }
      >>
      \alternative {
        \volta 1 {
          μάν _ _ _ κιε --
        }
        \volta 2 {
          κό
        }
      }
    }
    \repeat unfold 23 {\skip 1}
    \set stanza = "2."
    Κιε
  }
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
  \abs-fontsize #10
  \column {
    \fill-line {
      \column {
        \line {
          \bold "1."
          \column {
            "Μαλαματένιος αργαλειός κι ελεφαντένιο χτένι,"
            "κι ένα κορμί κι αμάν αμάν κι ένα κορμί αγγελικό."
          }
        }
      }
    }
    \combine \null \vspace #0.1
    \fill-line {
      \column {
        \line {
          \bold "2."
          \column {
            "Κι ένα κορμί αγγελικό κάθεται και υφαίνει,"
            "πραματευτής κι αμάν αμάν, πραματευτής επέρασε."
          }
        }
        \combine \null \vspace #0.1
        \line {
          \bold "3."
          \column {
            "Πραματευτής επέρασε στο μαύρο καβαλάρης,"
            "κοντοκρατεί κι αμάν αμάν, κοντοκρατεί το μαύρο του."
          }
        }
        \combine \null \vspace #0.1
        \line {
          \bold "4."
          \column {
            "Κοντοκρατεί το μαύρο του και την καλημερίζει:"
            "Καλή σου μέ κι αμάν αμάν, καλή σου μέρα λυγερή."
          }
        }
      }
      \column {
        \line {
          \bold "5."
          \column {
            "Καλή σου μέρα λυγερή. Καλώς τον ξένον που ‘ρτεν."
            "Κόρη μου δεν κι αμάν αμάν, κόρη μου δεν παντρεύεσαι."
          }
        }
        \combine \null \vspace #0.1
        \line {
          \bold "6."
          \column {
            "Κόρη μου δεν παντρεύεσαι να πάρεις νέον άνδρα;"
            "Κάλιο να σκάσ' κι αμάν αμάν, κάλιο να σκάσει ο μαύρος σου."
          }
        }
        \combine \null \vspace #0.1
        \line {
          \bold "7."
          \column {
            "Κάλιο να σκάσει ο μαύρος σου παρά το λόγο που 'πες,"
            "κι έχω άνδρα κι αμάν αμάν, κι έχω άνδρα στην ξενιτιά."
          }
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
  paper-height = 235\mm
  left-margin = 1\cm
  right-margin = 1\cm
  indent = #0
}

\include "render_data_01.ly"