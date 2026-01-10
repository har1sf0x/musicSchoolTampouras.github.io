\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Ασκήσεις - no. 001"
pieceSubtitle = "α' γυμνασίου"
pieceFilename = "Ασκήσεις_α_no_001"
keyA = \setRastKey
keyB = \setRastBKey

melody = \new Voice \fixed c' {
  \autoBreaksOff
  \section %\offset X-offset 7.6 \sectionLabel "1.1"
  \mark "1.1" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 2 {\RastChord 4 \arrowDown \RastChord 4 \arrowUp}
    \repeat unfold 2 {a-0\arrowDown a-0\arrowUp}
  }
  \section %\offset X-offset -1.8 \sectionLabel "1.2"
  \mark "1.2" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 2 {\ADAChord 4 \arrowDown \ADAChord 4 \arrowUp}
    \repeat unfold 2 {bfc-1\arrowDown bfc-1\arrowUp}
  }
  \section %\offset X-offset -1.8 \sectionLabel "1.3"
  \mark "1.3" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 2 {bfc-1\arrowDown bfc-1\arrowUp}
    \repeat unfold 2 {c'-3\arrowDown c'-3\arrowUp}
  } \break
  \section %\offset X-offset -1.8 \sectionLabel "1.3"
  \mark "1.4" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 2 {c'-1\arrowDown c'-1\arrowUp}
    \repeat unfold 2 {d'-3\arrowDown d'-3\arrowUp}
  }
  \section %\offset X-offset -1.8 \sectionLabel "1.3"
  \mark "1.5" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 2 {d'-1\arrowDown d'-1\arrowUp}
    \repeat unfold 2 {e'-3\arrowDown e'-3\arrowUp}
  } \break

  \section %\offset X-offset 7.6 \sectionLabel "1.1"
  \mark "2.1" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 2 {\RastChord 4 \arrowDown \RastChord 4 \arrowUp a-0\arrowDown a-0\arrowUp}
  }
  \section %\offset X-offset -1.8 \sectionLabel "1.2"
  \mark "2.2" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 2 {\ADAChord 4 \arrowDown \ADAChord 4 \arrowUp bfc-1\arrowDown bfc-1\arrowUp}
  }
  \section %\offset X-offset -1.8 \sectionLabel "1.3"
  \mark "2.3" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 2 {bfc-1\arrowDown bfc-1\arrowUp c'-3\arrowDown c'-3\arrowUp}
  } \break
  \section %\offset X-offset -1.8 \sectionLabel "1.3"
  \mark "2.4" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 2 {c'-1\arrowDown c'-1\arrowUp d'-3\arrowDown d'-3\arrowUp}
  }
  \section %\offset X-offset -1.8 \sectionLabel "1.3"
  \mark "2.5" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 2 {d'-1\arrowDown d'-1\arrowUp e'-3\arrowDown e'-3\arrowUp}
  } \break

  \section %\offset X-offset 7.6 \sectionLabel "1.1"
  \mark "3.1" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 4 {\RastChord 4 \arrowDown a-0\arrowUp}
  }
  \section %\offset X-offset -1.8 \sectionLabel "1.2"
  \mark "3.2" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 4 {\ADAChord 4 \arrowDown bfc-1\arrowUp}
  }
  \section %\offset X-offset -1.8 \sectionLabel "1.3"
  \mark "3.3" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 4 {bfc-1\arrowDown c'-3\arrowUp}
  } \break
  \section %\offset X-offset -1.8 \sectionLabel "1.3"
  \mark "3.4" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 4 {c'-1\arrowDown d'-3\arrowUp}
  }
  \section %\offset X-offset -1.8 \sectionLabel "1.3"
  \mark "3.5" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 4 {d'-1\arrowDown e'-3\arrowUp}
  } \break

  \section %\offset X-offset 7.6 \sectionLabel "1.1"
  \mark "4.1" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 4 {a-0\arrowDown \RastChord 4 \arrowUp}
  }
  \section %\offset X-offset -1.8 \sectionLabel "1.2"
  \mark "4.2" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 4 {bfc-1\arrowDown \ADAChord 4 \arrowUp}
  }
  \section %\offset X-offset -1.8 \sectionLabel "1.3"
  \mark "4.3" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 4 {c'-3\arrowDown bfc-1\arrowUp}
  } \break
  \section %\offset X-offset -1.8 \sectionLabel "1.3"
  \mark "4.4" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 4 {d'-3\arrowDown c'-1\arrowUp}
  }
  \section %\offset X-offset -1.8 \sectionLabel "1.3"
  \mark "4.5" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    \repeat unfold 4 {e'-3\arrowDown d'-1\arrowUp}
  }
}

verseOne = \lyricmode {
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

\paper {
  ragged-right = ##t
  ragged-last = ##t
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
%   paper-height = 220\mm
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