\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Χαρμάνταλι"
pieceSubtitle = "Αϊδίνι, Ζεϊμπέκικο"
pieceFilename = "Χαρμάνταλι"
source = ""
keyA = \setHicazKey
keyB = \setHicazBKey

melody = \relative c'' {
  \setZeybekTime
  \sectionLabel "A"
  % measure 1
  d16-1\arrowDown d-1\arrowZeybek e-1\arrowUp fb-1\arrowUp
  \repeat unfold 2 { g32-1\arrowDown fb-1\arrowZeybekB g16-2\arrowUp fb8-1\arrowUp\vibrato }
  g32-1\arrowDown fb-1\arrowZeybekB g16-2\arrowUp a8-3\arrowUp
  d,32-1\arrowDown (e16.-3) \ECbAChord 16 \arrowZeybek \ECbAChord 16 \arrowUp
  \ECbAChord16\arrowTalipOzkan \ECbAChord16\arrowUp \ECbAChord8\arrowUp
  e32-1\arrowDown f-2\arrowUp g-1\arrowDown a-3\arrowUp g-1\arrowDown f-1\arrowUp e-1\arrowDown d-1\arrowUp
  cb32-5\arrowDown d-1\arrowUp e-3\arrowDown f-4\arrowUp e-3\arrowDown d-1\arrowUp cb-5\arrowDown bfb-4\2\arrowUp
  a4-0\arrowDown
  % measure 2
  d16-1\arrowDown d-1\arrowZeybek e-1\arrowUp fb-1\arrowUp
  \repeat unfold 2 { g32-1\arrowDown fb-1\arrowZeybekB g16-2\arrowUp fb8-1\arrowUp\vibrato }
  g32-1\arrowDown fb-1\arrowZeybekB g16-2\arrowUp a8-3\arrowUp
  d,32-1\arrowDown (e16.-3) \ECbAChord 16 \arrowZeybek \ECbAChord 16 \arrowUp
  \ECbAChord16\arrowTalipOzkan \ECbAChord16\arrowUp \ECbAChord8\arrowUp
  g32-1\arrowDown g-1\arrowUp a16-1\arrowDown a-1\arrowZeybek a32-1\arrowUp (g-1)
  a32-1\arrowDown bfb-2\arrowUp a-1\arrowDown g-1\arrowUp fb16-1\arrowDown \hiddenGraceArrow \arrowZeybekB g-1\arrowUp
  \afterGrace a4-1\arrowUp \glissando {\once \override Stem.stencil = ##f g \vibrato}
  % measure 3
  fb32-1\arrowDown fb-1\arrowUp g16-1\arrowDown g-1\arrowZeybek g32-1\arrowUp (fb-1)
  g32-1\arrowDown a-3\arrowUp g-1\arrowDown f-1\arrowUp e16-1\arrowDown \hiddenGraceArrow \arrowZeybekB d-1\arrowUp
  e32-1\arrowDown e-1\arrowUp f16-2\arrowDown f-2\arrowZeybek f-2\arrowUp
  e32-1\arrowDown f-2\arrowUp e-1\arrowDown d-1\arrowUp cb32-2\arrowDown cb-2\arrowUp bfb-5\arrowDown a-0\arrowUp
  \ADAChord 8. \arrowDown (\ADAChord 32 \arrowUp) g32-0
  \ADAChord 32 \arrowDown cb32-2 \arrowUp bfb-5 \arrowDown a-0\arrowUp \RastChord 8 \arrowDown
  \ADAChord 16 \arrowDown \ADAChord 32 \arrowDown g32-0\arrowUp \ADAChord 32 \arrowDown \ADAChord 32 \arrowUp bfb16-0 \arrowDown
  \GDChord 16 \arrowDown cb16-1\arrowSilifke \GDChord 16 \arrowDown d16-1\arrowSilifke
  \GDChord 16 \arrowDown e16-1\arrowSilifke fb8-1\arrowUp\vibrato
  % measure 4
  fb32-1\arrowDown fb-1\arrowUp g16-1\arrowDown g-1\arrowZeybek g32-1\arrowUp (fb-1)
  g32-1\arrowDown a-3\arrowUp g-1\arrowDown f-1\arrowUp e16-1\arrowDown \hiddenGraceArrow \arrowZeybekB d-1\arrowUp
  e32-1\arrowDown e-1\arrowUp f16-2\arrowDown f-2\arrowZeybek f-2\arrowUp
  e32-1\arrowDown f-2\arrowUp e-1\arrowDown d-1\arrowUp cb32-2\arrowDown cb-2\arrowUp bfb-5\arrowDown a-0\arrowUp
  \ADAChord 8. \arrowDown (\ADAChord 32 \arrowUp) g32-0
  \ADAChord 32 \arrowDown cb32-2 \arrowUp bfb-5 \arrowDown a-0\arrowUp \RastChord 8 \arrowDown
  \ADAChord 16. \arrowDown bfb32-1\arrowZeybekB cb16-1\arrowUp d-1\arrowUp
  e16-3\arrowDown cb-2\arrowUp d-4\arrowUp bfb32-5\arrowDown a32-0\arrowUp
  \ADAChord 8. \arrowDown \ADAChord 16 \arrowUp
  \section \break \sectionLabel "B" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    % measure 1
    cb16-1\arrowDown d16-1\arrowDown d16-1\arrowZeybek d32-1\arrowUp (cb-1)
    d16.-1\arrowDown cb32-2\arrowUp bfb32-5\arrowDown a32-0\arrowUp bfb16-5\arrowDown
    cb16-1\arrowDown d16-1\arrowDown d16-1\arrowZeybek d32-1\arrowUp (cb-1)
    d16.-1\arrowDown cb32-2\arrowUp bfb16-5\arrowDown cb32-2\arrowUp (d-4)
    bfb8.-5 \arrowDown \BfbDDChord 16 \arrowUp \BfbDDChord 16 \arrowTalipOzkan \BfbDDChord 16 \arrowUp \BfbDDChord 8 \arrowUp
    \ADAChord 16 \arrowDown \ADAChord 32 \arrowDown g32-0\arrowUp \ADAChord 32 \arrowDown \ADAChord 32 \arrowUp bfb16-0 \arrowDown
    \GDChord 16 \arrowDown cb16-1\arrowSilifke \GDChord 16 \arrowDown d16-1\arrowSilifke
    \GDChord 16 \arrowDown e16-1\arrowSilifke fb8-1\arrowUp\vibrato
    % measure 2
    fb32-1\arrowDown fb-1\arrowUp g16-1\arrowDown g-1\arrowZeybek g32-1\arrowUp (fb-1)
    g32-1\arrowDown a-3\arrowUp g-1\arrowDown f-1\arrowUp e16-1\arrowDown \hiddenGraceArrow \arrowZeybekB d-1\arrowUp
    e32-1\arrowDown e-1\arrowUp f16-2\arrowDown f-2\arrowZeybek f-2\arrowUp
    e32-1\arrowDown f-2\arrowUp e-1\arrowDown d-1\arrowUp cb32-2\arrowDown cb-2\arrowUp bfb-5\arrowDown a-0\arrowUp
    \ADAChord 8. \arrowDown (\ADAChord 32 \arrowUp) g32-0
    \ADAChord 32 \arrowDown cb32-2 \arrowUp bfb-5 \arrowDown a-0\arrowUp \RastChord 8 \arrowDown
    \ADAChord 16. \arrowDown bfb32-1\arrowZeybekB cb16-1\arrowUp d-1\arrowUp
    e16-3\arrowDown cb-2\arrowUp d-4\arrowUp bfb32-5\arrowDown a32-0\arrowUp
    \ADAChord 4 \arrowDown
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
  paper-height = 220\mm
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