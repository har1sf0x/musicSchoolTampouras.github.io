\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Το Μαργούδι κι ο Αλεξανδρής"
pieceSubtitle = "Θράκη, Μαντηλάτος"
pieceFilename = "Το_Μαργούδι_κι_ο_Αλεξανδρής"
source = ""
keyA = \setUssakKey
keyB = \setUssakBKey

melody = \relative c'' {
  \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  \set Score.alternativeNumberingStyle = #'numbers-with-letters
  % \time 2/4
  \setMantilTime
  \sectionLabel "A"
  \repeat segno 2{
    \repeat volta 2 {
      % measure 1
      e8-1\arrowDown f-2\arrowUp e-1\arrowDown d-1\arrowUp d-1\arrowDown c-1\arrowUp d-3\arrowDown
      % measure 2
      <<
        {c8-1\arrowDown c-1\arrowUp c-1\arrowDown bfc-1\arrowUp a-0\arrowDown a-0\arrowUp g-0\arrowDown}
        \new Staff \with {
          \remove Time_signature_engraver
          alignAboveContext = "baglama"
          \magnifyStaff #2/3
          firstClef = ##f
        }
        {c16-1\arrowDown (d-3) c-1\arrowUp (d-3) c-1\arrowDown (d-3) b-1\arrowUp (c-3) a-0\arrowDown (c-3) a-0\arrowUp (c-3) g8-0\arrowDown}
      >>
      % measure 3
      bfc8-1\arrowDown bfc-1\arrowUp c-1\arrowDown bfc-1\arrowUp a-0\arrowDown a-0\arrowUp g-0\arrowDown
      % measure 4
      a16-0\arrowDown (bfc-1) bfc8-1\arrowZeybekB bfc8-1\arrowZeybekB bfc8-1\arrowUp bfc4-1\arrowDown a8-0\arrowUp
      % measure 5
      e'8-1\arrowDown f-2\arrowUp e-1\arrowDown d-1\arrowUp d-1\arrowDown c-1\arrowUp d-3\arrowDown
      % measure 6
      c8-1\arrowDown c-1\arrowUp c-1\arrowDown bfc-1\arrowUp a-0\arrowDown a-0\arrowUp g-0\arrowDown
      \alternative {
        \volta 1 {
          % measure 7a
          bfc8-1\arrowDown bfc-1\arrowUp c-1\arrowDown bfc-1\arrowUp a-0\arrowDown a-0\arrowUp g-0\arrowDown
          % measure 8a
          \AEAChord8\arrowDown \AEAChord8\arrowZeybekB \AEAChord8\arrowZeybekB \AEAChord8\arrowUp \AEAChord4\arrowDown a8-0\arrowUp
        }
        \volta 2 {
          % measure 7b
          d8-3\arrowDown c-1\arrowUp c-1\arrowDown bfc-1\arrowUp a-0\arrowDown a-0\arrowUp g-0\arrowDown
          % measure 8b
          \AEAChord4\arrowDown \AEAChord4\arrowUp \AEAChord4\arrowDown a8-0\arrowUp
          \fine
        }
      }
    }
    \section \break \sectionLabel "B"
    % measure 9
    a4-0\arrowDown a8-0\arrowDown a-0\arrowUp c-1\arrowDown d-3\arrowUp bfc-5\arrowDown
    % measure 10
    c4-1\arrowDown c8-1\arrowDown c-1\arrowUp c-1\arrowDown c-1\arrowUp bfc-5\arrowDown
    % measure 11
    c8-1\arrowDown (d-3) d8-3\arrowDown d-3\arrowUp c-1\arrowDown c-1\arrowUp bfc-5\arrowDown
    % measure 12
    a4-0\arrowDown a8-0\arrowDown a-0\arrowUp c-1\arrowDown d-3\arrowUp bfc-5\arrowDown
    % measure 13
    c4-1\arrowDown c8-1\arrowDown c-1\arrowUp c-1\arrowDown c-1\arrowUp bfc-5\arrowDown
    % measure 14
    c8-1\arrowDown (d-3) d8-3\arrowDown d-3\arrowUp c4-1\arrowDown a8-0\arrowDown
    \section \break \sectionLabel "Γ"
    % measure 15
    <<
      {bfc8-1\arrowDown bfc-1\arrowUp bfc8-1\arrowDown a-0\arrowUp c-1\arrowDown c-1\arrowUp bfc-5\arrowDown}
      \new Staff \with {
        \remove Time_signature_engraver
        \hide Clef
        alignAboveContext = "baglama"
        \magnifyStaff #2/3
        firstClef = ##f
      }
      {b16-1\arrowDown (c-3) b-1\arrowUp (c-3) b-1\arrowDown (c-3) a8-0\arrowUp c16-1\arrowDown (d-3) c-1\arrowUp (d-3) b8-5\arrowDown}
    >>
    % measure 16
    a4-0\arrowDown \AEAChord8\arrowDown \AEAChord8\arrowUp \AEAChord4\arrowDown a8-0\arrowUp
    % measure 17
    c8-1\arrowDown (d-3) d8-3\arrowDown d-3\arrowUp c4-1\arrowDown a8-0\arrowUp
    % measure 18
    bfc8-1\arrowDown bfc-1\arrowUp bfc8-1\arrowDown a-0\arrowUp c-1\arrowDown c-1\arrowUp bfc-5\arrowDown
    % measure 19
    a4-0\arrowDown \AEAChord8\arrowDown \AEAChord8\arrowUp \AEAChord4\arrowDown \customChord g a e -2 8 \arrowUp
    % measure 20
    \AEAChord4\arrowDown \AEAChord8\arrowDown \AEAChord8\arrowUp \AEAChord4\arrowDown a8-0\arrowUp
    % measure 21
    bfc8-1\arrowDown bfc-1\arrowUp bfc8-1\arrowDown a-0\arrowUp c-1\arrowDown c-1\arrowUp bfc-5\arrowDown
    % measure 22
    a4-0\arrowDown \AEAChord8\arrowDown \AEAChord8\arrowUp \AEAChord4\arrowDown a8-0\arrowUp
    % measure 23
    d8-3\arrowDown (c-1) d8-1\arrowDown e-3\arrowUp c4-1\arrowDown a8-0\arrowUp
    % measure 24
    bfc8-1\arrowDown bfc-1\arrowUp bfc8-1\arrowDown a-0\arrowUp c-1\arrowDown c-1\arrowUp bfc-5\arrowDown
    % measure 25
    a4-0\arrowDown \AEAChord8\arrowDown \AEAChord8\arrowUp \AEAChord4\arrowDown \customChord g a e -2 8 \arrowUp
    % measure 26
    \AEAChord4\arrowDown \AEAChord8\arrowDown \AEAChord8\arrowUp \AEAChord4\arrowDown a8-0\arrowUp \FBarline
  }
}

verseOne = \lyricmode {
  \new Lyrics {
    \set associatedVoice = "one"
    \repeat unfold 65 {\skip 1}
    \override StanzaNumber.font-series = #'medium
    \set stanza = "1α."
    Το Μαρ _ -- γού _ -- δι κι Α _ _ _ _ -- λέ -- ξαν _ -- δρής, _ _
    Το Μαρ _ -- γού _ -- δι κι Α _ _ _ _ -- λέ -- ξαν _ -- δρής _
    \repeat unfold 3 {
      βγαί _ -- νουν _ στην _ αυ -- λή κρυ _ _ _ -- φά κρύ _ -- φά, _
    }
    βγαί _ -- νουν _ στην _ αυ -- λή κρυ _ _ _ -- φά κρύ _ -- φά.
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
  \combine \null \vspace #1.0
  \fill-line {
    \column {
      \line { \bold "1."
        \column {
          "Το Μαργούδι κι Αλεξανδρής"
          "βγαίνουν στην αυλή κρυφά κρυφά."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "2."
        \column {
          "Τσ’ είδγι γειτουνιά και πουσπουρίζ’,"
          "τσ’ είδγί μάνα της κι μουρμουρίζ’."
        }
      }
    }
    \column {
      \line { \bold "3."
        \column {
          "Συ ‘πα βρε Μαργούδι μ’ να μη βγαίν’ς"
          "έξω στην αυλή κρυφά κρυφά."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "4."
        \column {
          "Άμα θέλεις μάνα, δείρι μι,"
          "πάλι εγώ θα βγαίνω στην αυλή,"
          "για να βλέπω τον Αλεξανδρή."
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