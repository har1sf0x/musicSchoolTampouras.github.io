\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Μεγαρίτικος Καρσιλαμάς"
pieceSubtitle = "Μέγαρα, Καρσιλαμάς/Αργιλαμάς"
pieceFilename = "Μεγαρίτικος_Καρσιλαμάς"
source = ""
keyA = \setHicazKey
keyB = \setHicazBKey

melody = \relative c'' {
  % \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  % \set Score.alternativeNumberingStyle = #'numbers-with-letters
  % \time 2/4
  \setArgilamTime
  \sectionLabel "A"
  \repeat volta 2 {
    \repeat unfold 2 {
      % measure 1 & 2
      \FbCbChord 8 \arrowDown (\RastChord 8 \noArrow)
      a16-0 \arrowDown (cb-2) bfb-5 \arrowDown a-0 \arrowUp g8-0 \arrowDown
      \beatAG 8 \arrowDown \beatAG 8 \arrowUp
    }
    % measure 3
    \FbCbChord 8 \arrowDown (\RastChord 8 \noArrow)
    a16-0 \arrowDown (cb-2) bfb-5 \arrowDown a-0 \arrowUp g8-0 \arrowDown
    \ADAChord 16 \arrowDown bfb16-1 \arrowUp cb-1 \arrowDown d-1 \arrowUp
    e16-3 \arrowDown f-4 \arrowUp e-3 \arrowDown d-1\arrowUp
    % measure 4
    cb-5 \arrowDown d-1 \arrowUp e-3 \arrowDown d-1\arrowUp
    cb16-2 \arrowDown cb-2 \arrowUp bfb-5 \arrowDown a-0 \arrowUp g8-0 \arrowDown
    \beatAG 8 \arrowDown \beatAG 8 \arrowUp \fine
  }
  \section \break \sectionLabel "B" \set Score.currentBarNumber = #1
  \set Score.repeatCommands = #'(start-repeat)
  % measure 1
  e'16-3 \arrowDown d-1 \arrowUp cb-5 \arrowDown d-1\arrowUp
  e8-1 \arrowDown fb-1 \arrowUp a-3 \arrowUp
  g16-1 \arrowDown g-1 \arrowUp fb-1 \arrowDown g-2 \arrowUp
  e16-1 \arrowDown e-1 \arrowUp d-1 \arrowDown e-3 \arrowUp
  % measure 2
  cb-5 \arrowDown d-1 \arrowUp e-3 \arrowDown d-1\arrowUp
  cb16-2 \arrowDown cb-2 \arrowUp bfb-5 \arrowDown a-0 \arrowUp g8-0 \arrowDown
  \ADAChord 16 \arrowDown bfb16-1 \arrowUp cb-1 \arrowDown d-1 \arrowUp
  e8-3 \arrowDown (a,-0)
  % measure 3
  e'16-3 \arrowDown d-1 \arrowUp cb-5 \arrowDown d-1\arrowUp
  e8-1 \arrowDown fb-1 \arrowUp a-3 \arrowUp
  g16-1 \arrowDown g-1 \arrowUp fb-1 \arrowDown g-2 \arrowUp
  e16-1 \arrowDown e-1 \arrowUp d-1 \arrowDown e-3 \arrowUp
  \set Score.repeatCommands = #'((volta #f) (volta ""))
  \once \override Score.VoltaBracket.text = \markup \text \normalsize "Α. Β. Γ. Ε."
  % measure 4a
  cb16-5 \arrowDown d-1 \arrowUp e-3 \arrowDown d-1\arrowUp
  cb16-2 \arrowDown cb-2 \arrowUp bfb-5 \arrowDown a-0 \arrowUp g8-0 \arrowDown
  \beatAG 8 \arrowDown \beatAG 8 \arrowUp
  \set Score.repeatCommands = #'((volta #f) (volta "") end-repeat)
  \once \override Score.VoltaBracket.text = \markup \text \normalsize "Δ."
  % measure 4b
  cb16-5 \arrowDown d-1 \arrowUp e-3 \arrowDown d-1\arrowUp
  cb16-2 \arrowDown cb-2 \arrowUp bfb-5 \arrowDown a-0 \arrowUp g8-0 \arrowDown
  \beatAG 8 \arrowDown \beatAG 16 \arrowUp a16-5 \arrowDown bfc-1 \arrowUp
  \set Score.repeatCommands = #'((volta #f))
  \section \break \sectionLabel "Γ" \set Score.currentBarNumber = #1
  \repeat volta 4 {
    % measure 1
    \ADChord 16 \arrowDown (\customTriChord bfb d a -1 8. \noArrow) \hiddenGraceArrow \arrowSelpe
    \customTriChord bfb d-1 bfb -3 16 \arrowDown (\customTriChord a d-1 bfb -5 16 \noArrow)
    \customTriChord bfb d-1 bfb -3 16 \arrowUp (\customTriChord a d-1 bfb -5 16 \noArrow)
    \customTriChord bfb d-1 bfb -3 8 \arrowUp
    bfb16-5 \arrowDown a-0 \arrowUp bfb-5 \arrowDown cb-2 \arrowUp
    bfb16-5 \arrowDown a-0 \arrowUp \RastChord 8 \arrowDown
    % measure 2
    a16-0 \arrowDown (cb-3) bfb8-5 \arrowDown
    cb16-2 \arrowDown cb-2 \arrowUp bfb-5 \arrowDown a-0 \arrowUp g8-0 \arrowDown
    \beatAG 8 \arrowDown \beatAG 8 \arrowUp
  }
  \section \break \sectionLabel "Δ" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    % measure 1
    c16-3 \arrowDown bfc-1 \arrowUp c-1 \arrowDown d-3 \arrowUp
    bfc16-5 \arrowDown a-0\arrowUp g-0\arrowDown fb-2\arrowUp g-0 \arrowDown a-0 \arrowUp
    bfc8.-1\arrowDown f'16-2 \arrowUp
    e16-1 \arrowDown f-2 \arrowUp e-1 \arrowDown d-1 \arrowUp
    \alternative {
      \volta 1 {
        % measure 2
        cb-5 \arrowDown d-1 \arrowUp e-3 \arrowDown d-1\arrowUp
        cb16-2 \arrowDown cb-2 \arrowUp bfb-5 \arrowDown a-0 \arrowUp g8-0 \arrowDown
        \beatAG 8 \arrowDown \beatAG 16 \arrowUp a16-5 \arrowDown bfc-1 \arrowUp
      }
      \volta 2 {
        % measure 2
        cb-5 \arrowDown d-1 \arrowUp e-3 \arrowDown d-1\arrowUp
        cb16-2 \arrowDown cb-2 \arrowUp bfb-5 \arrowDown a-0 \arrowUp g8-0 \arrowDown
        \beatAG 8 \arrowDown \beatAG 8 \arrowUp \FBarline
      }
    }
  }
  \section \break \sectionLabel "Ε" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    % measure 1
    \FbCbChord 8 \arrowDown (\RastChord 8 \noArrow)
    a8-0 \arrowDown bfc-1 \arrowUp g-0 \arrowDown
    c16-3 \arrowDown bfc-1 \arrowUp c-1 \arrowDown d-3 \arrowUp
    c8-1 \arrowDown bfc-1 \arrowUp
    % measure 2
    bfc-1 \arrowDown a-0 \arrowUp
    g8-0 \arrowDown a-0 \arrowUp bfc-1 \arrowDown
    c16-3 \arrowDown bfc-1 \arrowUp c-1 \arrowDown d-3 \arrowUp
    c8-1 \arrowDown bfc-1 \arrowUp
    % measure 3
    bfc-1 \arrowDown a-0 \arrowUp
    g8-0 \arrowDown a-0 \arrowUp bfc-1 \arrowDown
    c16-3 \arrowDown bfc-1 \arrowUp c-1 \arrowDown d-1 \arrowUp
    e16-3 \arrowDown f-4 \arrowUp e-3 \arrowDown d-1 \arrowUp
    % measure 3
    cb-5 \arrowDown d-1 \arrowUp e-3 \arrowDown d-1\arrowUp
    cb16-2 \arrowDown cb-2 \arrowUp bfb-5 \arrowDown a-0 \arrowUp g8-0 \arrowDown
    \beatAG 8 \arrowDown \beatAG 8 \arrowUp \FBarline
  }
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
  paper-height = 240\mm
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