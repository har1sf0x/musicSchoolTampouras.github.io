\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Είσαι άγγελος ωραίος"
pieceSubtitle = "Μέγαρα"
pieceFilename = "Είσαι_άγγελος_ωραίος"
source = ""
keyA = \setSegahKey
keyB = \setSegahBKey


voltaAdLib = \markup { 1. 2. }
voltaAdLibF = \markup { 3. }

melody = \relative c'' {
  \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  \set Score.alternativeNumberingStyle = #'numbers-with-letters
  % \time 2/4
  \setKalamTime
  \sectionLabel "A"
  \partial 4
  efc8-1\arrowDown efc-1\arrowUp
  \repeat volta 2 {
    % measure 1
    d4-1\arrowDown \hiddenGraceArrow \arrowZeybekB efc8-3\arrowUp
    d4-1\arrowDown \hiddenGraceArrow \arrowSelpe c8-1\arrowDown bfc-1\arrowUp
    % measure 2
    c4-1\arrowDown \hiddenGraceArrow \arrowZeybekB d8-1\arrowUp
    efc4-1\arrowDown \hiddenGraceArrow \arrowSelpe d8-1\arrowDown c-1\arrowUp
    \alternative {
      \volta 1 {
        % measure 3a
        bfc8-1\arrowDown bfc16-1\arrowDown ab-1\arrowUp bfc-1\arrowDown c-2\arrowUp
        bfc4-1\arrowDown \hiddenGraceArrow \arrowSelpe efc8-1\arrowDown efc-1\arrowUp
      }
      \volta 2 {
        % measure 3b
        bfc8-1\arrowDown bfc16-1\arrowDown ab-1\arrowUp bfc-1\arrowDown c-2\arrowUp
        bfc4-1\arrowDown g8-0\arrowDown g-0\arrowDown
      }
    }
  }
  \section \break \sectionLabel "B"
  % measure 4
  bfc4-1\arrowDown bfc8-1\arrowDown
  bfc16-1\arrowDown (c-2 bfc-1 ab-1) bfc8-1\arrowDown c-1\arrowDown
  % measure 5
  d4-1\arrowDown d8-1\arrowDown
  efc8.-1\arrowDown (fb16-3) efc8-1\arrowDown d-1\arrowDown
  % measure 6
  c8-1\arrowDown (bfc-1) c-1\arrowDown
  d8.-1\arrowDown (efc16-3) d8-1\arrowDown c-1\arrowDown
  % measure 7
  bfc4-1\arrowDown bfc8-1\arrowZeybek
  bfc4-1\arrowDown \hiddenGraceArrow \arrowSelpe \RastChord8\arrowDown \RastChord8\arrowUp
  % measure 8
  bfc4-1\arrowDown bfc8-1\arrowZeybek
  bfc16-1\arrowDown (c-2 bfc-1) ab-1\arrowSelpe bfc8-1\arrowDown c-1\arrowUp
  % measure 9
  d4-1\arrowDown d8-1\arrowZeybek
  efc16-3\arrowDown (d-1 efc-1) fb-3\arrowSelpe efc8-1\arrowDown d-1\arrowUp
  % measure 10
  c8.-1\arrowDown bfc16-1\arrowZeybekB c8-1\arrowUp
  d16-3\arrowDown (c-1 d-1) efc-3\arrowSelpe d8-1\arrowDown c-1\arrowUp
  \noBreak
  % measure 11
  bfc8-1\arrowDown bfc16-1\arrowDown ab-1\arrowUp bfc-1\arrowDown c-2\arrowUp
  bfc4-1\arrowDown bfc8-1\arrowDown bfc-1\arrowDown
  % measure 12
  efc4-1\arrowDown d8-1\arrowDown
  efc8-1\arrowDown efc8-1\arrowDown fb8-1\arrowDown fb8-1\arrowDown
  % measure 13
  g8-1\arrowDown fb-1\arrowDown efc-1\arrowDown
  d8-1\arrowDown d-1\arrowDown efc-1\arrowDown d-1\arrowDown
  % measure 14
  c8-1\arrowDown (bfc-1) c-1\arrowDown
  d8.-1\arrowDown (efc16-3) d8-1\arrowDown c-1\arrowDown
  % measure 15
  bfc4-1\arrowDown bfc8-1\arrowZeybek
  bfc4-1\arrowDown \hiddenGraceArrow \arrowSelpe bfc8-1\arrowDown bfc-1\arrowDown
  % measure 16
  efc4-1\arrowDown \hiddenGraceArrow \arrowZeybekB d8-1\arrowUp
  efc8.-1\arrowDown efc16-1\arrowSelpe fb8-1\arrowDown fb8-1\arrowUp
  % measure 17
  g8.-1\arrowDown fb16-1\arrowZeybekB efc8-1\arrowUp
  d8.-1\arrowDown d16-1\arrowSelpe efc8-1\arrowDown d-1\arrowUp
  % measure 18
  c8.-1\arrowDown bfc16-1\arrowZeybekB c8-1\arrowUp
  d16-3\arrowDown (c-1 d-1) efc-3\arrowSelpe d8-1\arrowDown c-1\arrowUp
  % measure 19
  bfc8-1\arrowDown bfc16-1\arrowDown ab-1\arrowUp bfc-1\arrowDown c-2\arrowUp
  bfc4-1\arrowDown efc8-1\arrowDown efc-1\arrowDown

  \section \break \sectionLabel "Γ"
  \set Score.repeatCommands = #'(start-repeat)
  % measure 20
  d4.-1\arrowDown d8-1\arrowDown (c-1) bfc16-1\arrowDown (ab-1) bfc8-2\arrowUp
  % measure 21
  c4-1\arrowDown \hiddenGraceArrow \arrowZeybekB d8-1\arrowUp
  efc4-1\arrowDown \hiddenGraceArrow \arrowSelpe d8-1\arrowDown c-1\arrowUp

  \set Score.repeatCommands = #'((volta #f) (volta "1. 2."))
  % measure 22a
  bfc8-1\arrowDown bfc16-1\arrowDown ab-1\arrowUp bfc-1\arrowDown c-2\arrowUp
  bfc4-1\arrowDown \hiddenGraceArrow \arrowSelpe efc8-1\arrowDown efc-1\arrowUp _"D.C."

  \set Score.repeatCommands = #'((volta #f) (volta "") end-repeat)
  \override Score.VoltaBracket.text = \markup \text \normalsize "Fine."
  bfc4.-1\arrowDown r4 \fine
  \set Score.repeatCommands = #'((volta #f))
  % \FBarline
  
}

verseOne = \lyricmode {
  \new Lyrics {
    \set associatedVoice = "one"
    \repeat unfold 26 {\skip 1} %"1α."
    \override StanzaNumber.font-series = #'medium
    \set stanza = "1."
    Εί -- σαι άγ -- γε -- λος _ ω -- ραί -- ος έ _ -- χεις μά -- τια γά _ -- λα -- να
    \repeat unfold 29 {\skip 1}
    και χει -- λά -- κι κο _ -- ρά _ -- λέ -- νιο μι -- κρό μου και τε -- τρά -- ξαν -- θα _ μαλ -- λιά
    \repeat unfold 30 {\skip 1}
    Ζα _ --
    <<
        { λί _ -- ζο _ -- μαι ζα -- λί _ -- ζο -- μαι _ _ _ _ _ ό}
        \new Lyrics {
          \set associatedVoice = "one"
          τάν _ -- σε _ συλ -- λο -- γί _ -- ζο -- μαι _ _ _ _ _ _ 
        }
      >>
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
%   paper-height = 250\mm
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
}
% \book {
%   \bookOutputName \pieceFilename
%   \paper {
%     print-page-number = ##f
%   }
%   \bookpart {
%     \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
%         <<
%           \new Voice = "one" {
%             \customScripts #hideArrowsArticulationNear
%             \keyA
%             \melody
%           }
%           \new Lyrics \lyricsto "one" {
%             \verseOne
%           }
%         >>
%       }
%     }
%     \extraVerses
%   }
% }
% \layout {
%   \override Fingering.transparent = ##f
%   \override Fingering.script-priority = #-200
% }
% \book {
%   \bookOutputName #(string-append pieceFilename "_δάχτυλα")
%   \bookpart {
%     \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
%         <<
%           \new Voice = "one" {
%             \customScripts #hideArrowsArticulationNear
%             \keyA
%             \melody
%           }
%           \new Lyrics \lyricsto "one" {
%             \verseOne
%           }
%         >>
%       }
%     }
%     \extraVerses
%   }
% }
% \layout {
%   \override Fingering.transparent = ##t
%   \override Fingering.script-priority = #100
% }
% \book {
%   \bookOutputName #(string-append pieceFilename "_πενιές")
%   \bookpart {
%     \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
%         <<
%           \new Voice = "one" {
%             \customScripts #articulationNear
%             \keyA
%             \melody
%           }
%           \new Lyrics \lyricsto "one" {
%             \verseOne
%           }
%         >>
%       }
%     }
%     \extraVerses
%   }
% }
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
% \layout {
%   \override Fingering.transparent = ##t
%   \override Fingering.script-priority = #100
% }
% \book {
%   \bookOutputName #(string-append pieceFilename "_inΝτο")
%   \bookpart {
%     \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
%         <<
%           \new Voice = "one" {
%             \customScripts #hideArrowsArticulationNear
%             \keyB
%             \transpose g c \melody
%           }
%           \new Lyrics \lyricsto "one" {
%             \verseOne
%           }
%         >>
%       }
%     }
%     \extraVerses
%   }
% }
% \layout {
%   \override Fingering.transparent = ##f
%   \override Fingering.script-priority = #-200
% }
% \book {
%   \bookOutputName #(string-append pieceFilename "_inΝτο_δάχτυλα")
%   \bookpart {
%     \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
%         <<
%           \new Voice = "one" {
%             \customScripts #hideArrowsArticulationNear
%             \keyB
%             \transpose g c \melody
%           }
%           \new Lyrics \lyricsto "one" {
%             \verseOne
%           }
%         >>
%       }
%     }
%     \extraVerses
%   }
% }
% \layout {
%   \override Fingering.transparent = ##t
%   \override Fingering.script-priority = #100
% }
% \book {
%   \bookOutputName #(string-append pieceFilename "_inΝτο_πενιές")
%   \bookpart {
%     \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
%         <<
%           \new Voice = "one" {
%             \customScripts #articulationNear
%             \keyB
%             \transpose g c \melody
%           }
%           \new Lyrics \lyricsto "one" {
%             \verseOne
%           }
%         >>
%       }
%     }
%     \extraVerses
%   }
% }
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