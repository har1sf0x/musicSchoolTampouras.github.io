\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Ο Γιώργος"
pieceSubtitle = "Μοναστηράκι Δράμας"
pieceFilename = "Ο_Γιώργος"
source = ""
keyA = \setUssakKey
keyB = \setUssakBKey

melodyA = \relative c'' {
  % \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  \set Score.alternativeNumberingStyle = #'numbers-with-letters
  % \time 2/4
  \setKalamTime
  \themeLabel "Α"
  \repeat volta 2 {
    % measure 1
    c4-3\arrowDown \acciaccaturaNote bfc16-1\arrowZeybekB c8-1\arrowUp d4-3\arrowDown \hiddenGraceArrow \arrowSelpe d8-3\arrowDown a8-0\arrowUp
    % measure 2
    \acciaccaturaNote d16-3 c4-1\arrowDown \acciaccaturaNote bfc16-1\arrowZeybekB c8-1\arrowUp d4-3\arrowDown \hiddenGraceArrow \arrowSelpe d8-3\arrowDown a8-0\arrowUp
    % measure 3
    \acciaccaturaNote d16-3 c4-1\arrowDown \acciaccaturaNote d16-1\arrowZeybekB e8-3\arrowUp e4-3\arrowDown \acciaccaturaNote d16-1\arrowSelpe d8-1\arrowDown c8-1\arrowUp
    % measure 4
    \acciaccaturaNote d16-3 c4-1\arrowDown \acciaccaturaNote bfc16-1\arrowZeybekB a8-0\arrowUp \AEAChord 4 \arrowDown \hiddenGraceArrow \arrowSelpe \AEAChord 8 \arrowDown \AEAChord 8 \arrowUp
  }
  \section \break \tweak extra-offset #'(-1.65 . 0) \themeLabel "Β"
  \repeat segno 2 {
    \repeat volta 2 {
      % measure 5
      d8-1\arrowDown (e4-1) e4-1\arrowDown\trill e8-1\arrowDown\vibrato (d8-1)
      % measure 6
      c4-1\arrowDown e8-3\arrowUp e8-3\arrowDown (d16-1 e16) d16-1\arrowDown (e16 c8-1)
      % mesure 7
      \acciaccaturaNote d16-1 e4.-3\arrowDown e8-3\arrowDown (d8-1) d8-1\arrowDown (c8-1)
      % measure 8
      c8-1\arrowDown (bfc8-1) a8-0\arrowUp a4-0\arrowDown a8-0\arrowDown a8-0\arrowUp
      \section \break \themeLabel "B'"
      % measure 9
      \acciaccaturaNote d16-1 e4.-1\arrowDown \hiddenGraceArrow \arrowZeybek e4-1\arrowDown \hiddenGraceArrow \arrowSelpe e8-1\arrowDown d8-1\arrowUp
      % measure 10
      c4-1\arrowDown \acciaccaturaNote d16-1\arrowZeybekB e8-3\arrowUp e4-3\arrowDown \acciaccaturaNote d16-1\arrowSelpe d8-1\arrowDown c8-1\arrowUp
      % measure 11
      \acciaccaturaNote d16-1 e4.-1\arrowDown \hiddenGraceArrow \arrowZeybek e4-1\arrowDown \acciaccaturaNote d16-1\arrowSelpe d8-1\arrowDown c8-1\arrowUp
      % measure 12
      \acciaccaturaNote d16-3 c4-1\arrowDown \acciaccaturaNote bfc16-1\arrowZeybekB a8-0\arrowUp \AEAChord 4 \arrowDown \hiddenGraceArrow \arrowSelpe \AEAChord 8 \arrowDown \AEAChord 8 \arrowUp
      \section \break \themeLabel "Α'"
      % measure 13
      c16-3\arrowDown (bfc16-1) c4-1\arrowUpStop d4-3\arrowDown d8-3\arrowDown (a8-0)
      % measure 14
      c16-3\arrowDown (bfc16-1) c4-1\arrowUpStop d4-3\arrowDown d8-3\arrowDown (c8-1)
      % measure 15
      c8-1\arrowDown e4-3\arrowUpStop e8-3\arrowDown (d8-1) d8-1\arrowDown (c8-1)
      % measure 16
      c8-1\arrowDown (bfc8-1) a8-0\arrowUp a4-0\arrowDown a8-0\arrowDown a8-0\arrowUp
      \section \break \themeLabel "Α"
      % measure 17
      c4-3\arrowDown \acciaccaturaNote bfc16-1\arrowZeybekB c8-1\arrowUp d4-3\arrowDown \hiddenGraceArrow \arrowSelpe d8-3\arrowDown a8-0\arrowUp
      % measure 18
      \acciaccaturaNote d16-3 c4-1\arrowDown \acciaccaturaNote bfc16-1\arrowZeybekB c8-1\arrowUp d4-3\arrowDown \hiddenGraceArrow \arrowSelpe d8-3\arrowDown a8-0\arrowUp
      % measure 19
      \acciaccaturaNote d16-3 c4-1\arrowDown \acciaccaturaNote d16-1\arrowZeybekB e8-3\arrowUp e4-3\arrowDown \acciaccaturaNote d16-1\arrowSelpe d8-1\arrowDown c8-1\arrowUp
      \alternative {
        \volta 1 {
          % measure 20a
          \acciaccaturaNote d16-3 c4-1\arrowDown \acciaccaturaNote bfc16-1\arrowZeybekB a8-0\arrowUp \AEAChord 4 \arrowDown \hiddenGraceArrow \arrowSelpe \AEAChord 8 \arrowDown \AEAChord 8 \arrowUp
        }
        \volta 2 {
          % measure 20b
          \acciaccaturaNote d16-3 c4-1\arrowDown \acciaccaturaNote bfc16-1\arrowZeybekB a8-0\arrowUp \AEAChord 4 \arrowDown \section \break \themeLabel "Γ" \acciaccaturaNote e'16-3 \arrowSelpe d8-1\arrowDown c8-1\arrowUp
        }
      }
    }
    \repeat volta 2 {
      \once \override Score.BarNumber.break-visibility = #all-visible
      % measure 21
      bfc4-1\arrowDown \acciaccaturaNote a16-0\arrowZeybekB bfc8-1\arrowUp c4-3\arrowDown \acciaccaturaNote a16-0\arrowSelpe bfc8-1\arrowDown g8-0\arrowDown
      % measure 22
      \ADAChord 4 \arrowDown \acciaccaturaNote bfc16-1\arrowZeybekB c8-1\arrowDown d4-1\arrowDown \acciaccaturaNote e16-3 \arrowSelpe d8-1\arrowDown c8-1\arrowUp
      % measure 23
      bfc4-1\arrowDown \acciaccaturaNote a16-0\arrowZeybekB bfc8-1\arrowUp c8-1\arrowDown d8-3\arrowUp bfc8-1\arrowDown (g8-0)
      \alternative {
        \volta 1 {
          \AEAChord 4. \arrowDown \AEAChord 4 \arrowZeybek \acciaccaturaNote e'16-3 \arrowSelpe d8-1\arrowDown c8-1\arrowUp
        }
        \volta 2 {
          \AEAChord 4. \arrowDown \AEAChord 4 \arrowZeybek \hiddenGraceArrow \arrowSelpe \AEAChord 8 \arrowDown \AEAChord 8 \arrowUp
        }
      }
    }
    \fine
  }
  % \section \break \themeLabel "B" \set Score.currentBarNumber = #1
  % measure 2
  % d8-3\arrowDown c16-1\arrowDown bfc-1\arrowUp \ADAChord 8 \arrowDown \ADAChord 8 \arrowUp
}

% melodyB = \relative c'' {
%   \setZeybekTime
%   \section \break \themeLabel "B"
%   g'2 fb4 efb d c bfc afb g
% }

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
    \repeat unfold 20 {\skip 1}
    \override StanzaNumber.font-series = #'medium
    \set stanza = "1."
    Το Γιώ-, κα -- λέ, το Γιώ _ -- ργο τον ε -- πιά -- σα -- νε _ _
    \repeat unfold 18 {\skip 1}
    και στην φυ -- λα -- κί τον πά -- νε, Ε -- λε -- νιωμ' δε σε ρω -- τά -- νε _
  }
}

extraVerses = \markup {
  \abs-fontsize #10
  \column {
    \fill-line {
      \hspace #1
      \column {
        \line {
          \bold "1."
          \column {
            "Τον Γιω-, καλέ το Γιώργο τον επιάσανε."
            "Και στη φυλακή τον πάνε, Ελενιώ δε σε ρωτάνε."
          }
        }
        \combine \null \vspace #0.1
        \line {
          \bold "2."
          \column {
            "Η Ελενιώ, η Ελενιώ καθότανε."
            "Κει στην άκρη στο ποτάμι, Ελενιώ δε σε ρωτάνε."
          }
        }
      }
      \hspace #1
    }
    \combine \null \vspace #0.1
    \fill-line {
      \hspace #1
      \column {
        \line {
          \bold "3."
          \column {
            "Με το ποτά-, με το ποτάμι μάλωνε."
            "Ποταμάκι κάνε ξέρα, θέλω να περάσω πέρα."
          }
        }
        \combine \null \vspace #0.1
        \line {
          \bold "4."
          \column {
            "Να πάω, καλέ να πάω να διω το Γιώργο μου."
            "Τον πολυαγαπητό μου, πουν’ τα μάτια και το φως μου."
          }
        }
      }
      \hspace #1
      \column {
        \line {
          \bold "5."
          \column {
            "Οσα, καλέ ν’ όσα φλουριά μου δώκανε."
            "Ολα, όλα θα τα δώσω και το Γιώργο να γλιτώσω."
          }
        }
        \combine \null \vspace #0.1
        \line {
          \bold "6."
          \column {
            "Κι αν δε, καλέ κι αν δε μου φτάσουνε κι αυτά."
            "Θα πουλήσω τα προικιά μου, κι ας μαλώνει η πεθερά μου."
          }
        }
      }
      \hspace #1
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
%   paper-height = 255\mm
%   left-margin = 1\cm
%   right-margin = 1\cm
%   indent = #0
% }

\include "render_data_01.ly"
