\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Ege zeybek"
pieceSubtitle = "Ανατολικό Αιγαίο Παράλια Μικράς Ασίας"
pieceFilename = "Ege_zeybek"
source = ""
keyA = \setNeutralKey
keyB = \setNeutralBKey

melodyA = \relative c'' {
  % \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  % \set Score.alternativeNumberingStyle = #'numbers-with-letters
  % \time 2/4
  \setZeybekTime
  \themeLabel "A"
  \repeat volta 2
  {
    % measure 1
    g'8-1\arrowDown g16-1\arrowZeybek g-1\arrowUp f-1\arrowDown e-1\arrowUp d8-1\arrowDown
    e8-1\arrowDown e16-1\arrowZeybek e-1\arrowUp d-1\arrowDown c-1\arrowUp b8-1\arrowUp
    g16-1\arrowDown d'8-1\arrowUp b16-1\arrowUp c8-1\arrowDown \hiddenGraceArrow \arrowZeybekB a-0\arrowUp
    \RastChord 8 \arrowDown \RastChord 16 \arrowZeybek a16-0\arrowUp
    b8-1\arrowDown \hiddenGraceArrow \arrowZeybekB c8-1\arrowUp
    \once \override Glissando.extra-offset = #'(0 . -0.5) \appoggiaturaNote b16-1\arrowUp \glissando (d4-1)
    % measure 2
    g8-1\arrowDown g16-1\arrowZeybek g-1\arrowUp f-1\arrowDown e-1\arrowUp d8-1\arrowDown
    e8-1\arrowDown e16-1\arrowZeybek e-1\arrowUp d-1\arrowDown c-1\arrowUp b8-1\arrowUp
    g16-1\arrowDown d'8-1\arrowUp b16-1\arrowUp c8-1\arrowDown \hiddenGraceArrow \arrowZeybekB a-0\arrowUp
    \RastChord 4 \arrowDown \RastChord 4 \arrowUp \RastChord 4 \arrowDown
  }

  \section \break \themeLabel "B" %\set Score.currentBarNumber = #1
  % \once \override Score.SegnoMark.extra-offset = #'(1.6 . -2.)
  \repeat segno 2
  {
    \repeat volta 2
    {
      % measure 3
      \RastChord 8 \arrowDown \RastChord 16 \arrowZeybek b16-1\arrowUp a16-0\arrowDown a16-0\arrowUp c8-1\arrowDown
      b8-1\arrowDown b16-1\arrowZeybek d-3\arrowUp c-1\arrowDown c-1\arrowUp e8-1\arrowUp
      g,16-1\arrowDown d'8-1\arrowUp b16-1\arrowUp c8-1\arrowDown \hiddenGraceArrow \arrowZeybekB a-0\arrowUp
      \RastChord 8 \arrowDown \RastChord 16 \arrowZeybek a16-0\arrowUp
      b8-1\arrowDown \hiddenGraceArrow \arrowZeybekB c8-1\arrowUp
      \once \override Glissando.extra-offset = #'(0 . -0.5) \appoggiaturaNote b16-1\arrowUp \glissando (d4-1)
      % measure 4
      \RastChord 8 \arrowDown \RastChord 16 \arrowZeybek b16-1\arrowUp a16-0\arrowDown a16-0\arrowUp c8-1\arrowDown
      b8-1\arrowDown b16-1\arrowZeybek d-3\arrowUp c-1\arrowDown c-1\arrowUp e8-1\arrowUp
      g,16-1\arrowDown d'8-1\arrowUp b16-1\arrowUp c8-1\arrowDown \hiddenGraceArrow \arrowZeybekB a-0\arrowUp
      \RastChord 4 \arrowDown \RastChord 4 \arrowUp \RastChord 4 \arrowDown \fine
    }

    \section \break \themeLabel "Γ" %\set Score.currentBarNumber = #1
    \repeat volta 2
    {
      % measure 5
      g'8-1\arrowDown g16-1\arrowZeybek g-1\arrowUp f-1\arrowDown e-1\arrowUp d8-1\arrowDown
      e8-1\arrowDown \hiddenGraceArrow \arrowZeybekB fb8-1\arrowUp g8-1\arrowDown \hiddenGraceArrow \arrowZeybekB a8-1\arrowUp
      b8-1\arrowDown b16-1\arrowZeybek g16-1\arrowUp a16-3\arrowDown a16-3\arrowUp fb8-1\arrowUp
      g8-1\arrowDown g16-1\arrowZeybek a16-1\arrowUp
      b8-1\arrowDown \hiddenGraceArrow \arrowZeybekB c8-1\arrowUp
      \once \override Glissando.extra-offset = #'(0 . -0.5) \appoggiaturaNote b16-1\arrowUp \glissando (d4-1)
      % measure 4
      g,8-1\arrowDown g16-1\arrowZeybek g-1\arrowUp f-1\arrowDown e-1\arrowUp d8-1\arrowDown
      e8-1\arrowDown \hiddenGraceArrow \arrowZeybekB fb8-1\arrowUp g8-1\arrowDown \hiddenGraceArrow \arrowZeybekB a8-1\arrowUp
      b8-1\arrowDown b16-1\arrowZeybek g16-1\arrowUp a16-3\arrowDown a16-3\arrowUp fb8-1\arrowUp
      g4-1\arrowDown g4-1\arrowUp g4-1\arrowDown
    }
  }
  

  % \section \break \themeLabel "B" \set Score.currentBarNumber = #1
  % measure 2
  % d8-3\arrowDown c16-1\arrowDown bfc-1\arrowUp \ADAChord 8 \arrowDown \ADAChord 8 \arrowUp
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
  %   \hspace #1
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
  %   \hspace #1
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
  %   \hspace #1
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
\paper {
  paper-width = 210\mm
  paper-height = 135\mm
  left-margin = 1\cm
  right-margin = 1\cm
  indent = #0
}

\include "render_data_01.ly"