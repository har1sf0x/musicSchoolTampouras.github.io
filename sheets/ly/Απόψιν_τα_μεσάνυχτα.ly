\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Απόψιν τα μεσάνυχτα"
pieceSubtitle = "Σινασός, Καππαδοκία"
pieceFilename = "Απόψιν_τα_μεσάνυχτα"
source = ""
keyA = \setUssakKey
keyB = \setUssakBKey

aeNotes =
#(define-music-function (dur) (ly:duration?) #{
  \fixed c' {<\single \greyNote a \single \greyNote e> $dur }  % Notes with $ prefix use the duration argument
#})

measureAG = <<
  {a8-2-5\arrowDown (g-0-2 a-2-5) a-2-5\arrowUp (g-0-2 a16-2-5) a-2-5\arrowSelpe g4-0\arrowDown}
  {\aeNotes 8 \aeNotes 8 \aeNotes 8 \aeNotes 8 \aeNotes 8 \aeNotes 16 \aeNotes 16 s4}
  >>

measureAA = <<
  {a8-2-5\arrowDown (g-0-2 a-2-5) a-2-5\arrowUp (g-0-2 a16-2-5) a-2-5\arrowSelpe a4-2-5\arrowDown}
  {\aeNotes 8 \aeNotes 8 \aeNotes 8 \aeNotes 8 \aeNotes 8 \aeNotes 16 \aeNotes 16 \aeNotes 4}
  >>

melody = \relative c'' {
  \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  \set Score.alternativeNumberingStyle = #'numbers-with-letters
  \setFourTime
  \partial 4 g4-0\arrowDown
  \section \sectionLabel "A"
  \repeat volta 2 {
    % measure 1
    \ADChord 4 \arrowDown a8-0\arrowSilifke bfc-1\arrowUp \downBeatChord g d c' -1 16 (d16-3) c8-1\arrowUp d4-1\arrowDown
    % measure 2
    \downBeatChord g d e' -3 8. f16-4\arrowUp e16-3\arrowDown (f-4) d8-1\arrowUp \downBeatChord g d c' -1 16 (d16-3) c-1\arrowUp (d-3) bfc8-5\arrowDown (g-0)
    % measure 3
    \downBeatChord g d c' -1 8 (d'8-3) d-3\arrowDown c16-1\arrowUp (d-3) \downBeatChord g d c' -1 16 (d16-3) bfc-1\arrowUp (c-3) bfc-1\arrowDown (c-3) a8-0\arrowUp
    \alternative {
      % measure 4a
      \volta 1 {\measureAG}
      % measure 4b
      \volta 2 {\measureAA \fine}
    }
  }
  \section \break \sectionLabel "B" %\set Score.currentBarNumber = #1
  % measure 5
  \downBeatChord g d e' -1 4 e'8-1\arrowDown f-2\arrowUp \downBeatChord g d e' -1 16 (f16-2) e-1\arrowUp (f-2) d4-1\arrowDown
  % measure 6
  \downBeatChord g d d' -1 4 c8-1\arrowDown d-3\arrowUp \downBeatChord g d c' -1 16 (d16-3) c8-1\arrowUp d4-3\arrowDown
  % measure 7
  \downBeatChord g d e' -1 4 f8-2\arrowDown g-4\arrowUp \downBeatChord g d e' -1 16 (f16-2) e-1\arrowUp (f-2) d4-1\arrowDown
  % measure 8
  \downBeatChord g d d' -1 4 d8-1\arrowSilifke d-1\arrowUp \downBeatChord g d d' -1 8 d8-1\arrowUp d4-1\arrowDown
  % measure 9
  \downBeatChord g d g' -1 16 (a'16-3) g16-1\arrowUp (a-3) f8-1\arrowDown g-3\arrowUp \downBeatChord g d e' -1 16 (f16-2) e-1\arrowUp (f-2) d4-1\arrowDown
  % measure 10
  \downBeatChord g d d' -1 4 c8-1\arrowDown d-3\arrowUp \downBeatChord g d c' -1 16 (d16-3) c8-1\arrowUp d4-3\arrowDown
  % measure 11
  \downBeatChord g d e' -1 4 f8-2\arrowDown g-4\arrowUp \downBeatChord g d e' -1 16 (f16-2) e-1\arrowUp (f-2) d4-1\arrowDown
  % measure 12
  \downBeatChord g d d' -1 4 d8-1\arrowSilifke d-1\arrowUp \downBeatChord g d d' -1 8 d8-1\arrowUp g,4-1\arrowDown
  \section \break \sectionLabel "Γ"
  \repeat volta 2 {
    % measure 13
    \ADChord 4 \arrowDown a8-0\arrowSilifke bfc-1\arrowUp \downBeatChord g d c' -1 16 (d16-3) c8-1\arrowUp d4-1\arrowDown
    % measure 14
    \downBeatChord g d e' -3 8. f16-4\arrowUp e16-3\arrowDown (f-4) d8-1\arrowUp \downBeatChord g d c' -1 16 (d16-3) c-1\arrowUp (d-3) bfc8-5\arrowDown (g-0)
    % measure 15
    \downBeatChord g d c' -1 8 (d'8-3) d-3\arrowDown c16-1\arrowUp (d-3) \downBeatChord g d c' -1 16 (d16-3) bfc-1\arrowUp (c-3) bfc-1\arrowDown (c-3) a8-0\arrowUp
    \alternative {
      % measure 16a
      \volta 1 {\measureAG}
      % measure 16b
      \volta 2 {\measureAA \jump "D.C. al Fine" \FBarline}
    }
  }
}

verseOne = \lyricmode {
  \new Lyrics {
    \set associatedVoice = "one"
    \repeat unfold 27 {\skip 1} "1."
    Α -- πό _ _ -- ψίν, __ _ α -- πό _ _ _ _ -- ψιν τα με _ -- σά _ -- νυ -- χτα, \repeat unfold 4 {\skip 1}
    α -- πό _ _ _ -- ψιν, __ _ α -- πό _ _ _ _ -- ψιν τα με _ -- σά _ -- νυ -- χτα \repeat unfold 4 {\skip 1}
    ση -- κώ _ -- θη -- κα _ να γρά _ _ _ -- ψω, __ _ _
    <<
      {τρυ -- γο _ -- νά _ -- κι _ μου, _ _ ση } %\repeat unfold 2 {\skip 1}
      \new Lyrics{στο που _ -- λά _ -- κι _ _ _ _ _ μου.}
    >>
  }
}

extraVerses = \markup {
  \abs-fontsize #10
  \column {
    \fill-line {
      \column {
        \line { \bold "1."
          \column {
            "Απόψιν, απόψιν τα μεσάνυχτα *2"
            "σηκώθηκα να γράψω, τρυγονάκι μου,"
            "σηκώθηκα να γράψω στο πουλάκι μου."
          }
        }
        \combine \null \vspace #0.1
        \line { \bold "2."
          \column {
            "Και κοντυ, και κοντυλιά δεν έριξα *2"
            "χωρίς ν’ αναστενάξω, τρυγονάκι μου,"
            "χωρίς ν’ αναστενάξω για σε πουλάκι μου."
            "(ή κι αρχίνησα να κλάψω, ...)"
          }
        }
      }
      \column {
        \line { \bold "3."
          \column {
            "Σηλυβρια, Σηλυβριανή μου Παναγιά *2"
            "στο μπόι του λαμπάδα, τρυγονάκι μου,"
            "στο μπόι του λαμπάδα για το πουλάκι μου."
          }
        }
        \combine \null \vspace #0.1
        \line { \bold "4."
          \column {
            "Φύλαγε, φύλαγε την αγάπη μου *2"
            "που είναι μακριά στα ξένα, τρυγονάκι μου,"
            "που είναι μακριά στα ξένα το πουλάκι μου."
          }
        }
      }
    }
    \combine \null \vspace #0.1
    \fill-line {
      \column {
        \line { \bold "5."
          \column {
            "Να φέρεις, να φέρεις την αγάπη μου *2"
            "αυτήν την εβδομάδα, τρυγονάκι μου,"
            "αυτήν την εβδομάδα το πουλάκι μου."
          }
        }
      }
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