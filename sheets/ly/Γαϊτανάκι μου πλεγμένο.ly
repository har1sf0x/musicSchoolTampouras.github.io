\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Γαϊτανάκι μου πλεγμένο"
pieceSubtitle = "Ρόδος"
pieceFilename = "Γαϊτανάκι_μου_πλεγμένο"
source = ""
keyA = \setRastKey
keyB = \setRastBKey

melody = \relative c'' {
  \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  \setFourTime
  \set Score.alternativeNumberingStyle = #'numbers-with-letters
  \partial 4 c8-3\arrowDown bfc-1\arrowUp
  \sectionLabel "A"
  \repeat volta 2 {
      % measure 1
      % \segnoMark 1
      \ADAChord 4 \arrowDown a8-0\arrowDown bfc-1\arrowUp c-1\arrowDown e-3\arrowUp d-1\arrowDown c-1\arrowUp
      % measure 2
      bfc-1\arrowDown c-3\arrowUp a-0\arrowDown bfc-1\arrowUp \RastChord 4 \arrowDown c8-3\arrowDown bfc-1\arrowUp
      % measure 3
      \ADAChord 4 \arrowDown a8-0\arrowDown bfc-1\arrowUp c-1\arrowDown e-3\arrowUp d-1\arrowDown c-1\arrowUp
      \alternative {
        \volta 1 {
          % measure 4a
          bfc-1\arrowDown c-3\arrowUp a-0\arrowDown bfc-1\arrowUp \RastChord 4 \arrowDown c8-3\arrowDown bfc-1\arrowUp
        }
        \volta 2 {
          % measure 4b
          bfc-1\arrowDown c-3\arrowUp a-0\arrowDown bfc-1\arrowUp \RastChord 4 \arrowDown \tiny bfc-5\arrowDown c8-1\arrowUp
        }
      }
    }
    \section \break \sectionLabel "B" %\set Score.currentBarNumber = #5
    \repeat volta 2 {
      % measure 5
      d4-3\arrowDown d8-3\arrowDown c-1\arrowUp bfc-5\arrowDown a-0\arrowUp bfc-5\arrowDown c-1\arrowUp
      % measure 6
      d4-1\arrowDown d8-1\arrowDown e-3\arrowUp d4-1\arrowDown d-1\arrowUp
      % measure 7
      \ADAChord 4 \arrowDown a8-0\arrowDown bfc-1\arrowUp c-1\arrowDown e-3\arrowUp d-1\arrowDown c-1\arrowUp
      % measure 8
      bfc-1\arrowDown c-3\arrowUp a-0\arrowDown bfc-1\arrowUp \RastChord 4 \arrowDown c8-3\arrowDown bfc-1\arrowUp \break
      % measure 9
      \ADAChord 4 \arrowDown a8-0\arrowDown bfc-1\arrowUp c-1\arrowDown e-3\arrowUp d-1\arrowDown c-1\arrowUp
      \alternative {
        \volta 1 {
          % measure 10a
          bfc-1\arrowDown c-3\arrowUp a-0\arrowDown bfc-1\arrowUp \RastChord 4 \arrowDown \normalsize c8-3\arrowDown bfc-1\arrowUp
          % measure 11a
          \ADAChord 4 \arrowDown a8-0\arrowDown bfc-1\arrowUp c-1\arrowDown e-3\arrowUp d-1\arrowDown c-1\arrowUp
          % measure 12a
          bfc-1\arrowDown c-3\arrowUp a-0\arrowDown bfc-1\arrowUp \RastChord 4 \arrowDown \tiny bfc-1\arrowDown c8-1\arrowUp
        }
        \volta 2 {
          % measure 10b
          bfc-1\arrowDown c-3\arrowUp a-0\arrowDown bfc-1\arrowUp \RastChord 4 \arrowDown c8-3\arrowDown bfc-1\arrowUp
        }
      }
    }
    \section \break \sectionLabel "Γ"
    % measure 11
    \ADAChord 4 \arrowDown a8-0\arrowDown bfc-1\arrowUp c-1\arrowDown e-3\arrowUp d-1\arrowDown c-1\arrowUp
    % measure 12
    bfc-1\arrowDown c-3\arrowUp a-0\arrowDown bfc-1\arrowUp \RastChord 4 \arrowDown c8-3\arrowDown bfc-1\arrowUp
    % measure 13
    \ADAChord 4 \arrowDown a8-0\arrowDown bfc-1\arrowUp c-1\arrowDown e-3\arrowUp d-1\arrowDown c-1\arrowUp
    % measure 14a
    \codaMark 1 bfc-1\arrowDown c-3\arrowUp a-0\arrowDown bfc-1\arrowUp \RastChord 4 \arrowDown \normalsize c8-3\arrowDown bfc-1\arrowUp
    \jump "D.C. al Coda"
    \section
    \sectionLabel "Coda"
    % measure 14b
    \tiny bfc-1\arrowDown c-3\arrowUp a-0\arrowDown bfc-1\arrowUp \RastChord 2 \arrowDown \fine %\FBarline
}

verseOne = \lyricmode {
  % \set fontSize = #-2
  <<
    \new Lyrics {
      \set associatedVoice = "one"
      \repeat unfold 17 {_ _}
      % \set stanza = "1α."
      "1α." Γα -- ϊ -- τά _ -- νι ν'εί _ -- χα _ στο πλέχ _ -- τρί _ και τσό -- χαν εις _ το _ ράφ  _ _ _ __ -- τη
      ωχ και τσό _ _ -- χάν _ εις το ράφ  _ _ _ __ -- τη
      \repeat unfold 6 {_ _} _
      % \set stanza = "1β." και _
      "1β." και _
      \repeat unfold 2 {_ _} _ Γαϊ -- τα -- νά _ _ -- κι _ μου πλεγ -- μέ _ _ _ __ -- νο
      στην α -- νέ _ _ -- μι _ τυ -- λιγ -- μέ _ _ _ __ -- νο \skip 1 _ νέ _ _ _ __ -- λες
    }
    \new Lyrics {
      \set associatedVoice = "one"
      \repeat unfold 17 {_ _} _
      _ _ ξέ _ -- νον εις _ την _ ξε -- νη _ -- τιά _ και καρ -- τε -- ρώ _ τον _ να  _ _ _ __ -- 'ρθεί
      ωχ και καρ _ _ -- τε _ -- ρώ τον
      \repeat unfold 10 {_ _} _ να  _ _ _ __ -- 'ρθεί.
    }
  >>
}

extraVerses = \markup {
  \column {
    \fill-line {
      \column {
        \line { \bold "1."
          \column {
            "Γαϊτάνι ν-είχα στο πλεχτρί και τσόχαν εις το ράφτη,"
            "και ξένον εις την ξενιτιά και καρτερώ τον να ’ρθει."
          }
        }
      }
      \column {
        \line { \bold "2."
          \column {
            "Ροδίτικο ’ναι το νερό, ροδίτικια κι η βρύση,"
            "Ροδίτισσα κι η κοπελιά που πάει για να γεμίσει."
          }
        }
      }
    }
    \combine \null \vspace #0.1
    \fill-line {
      \column {
        \line { \bold "3."
          \column {
            "Ροδίτικο ’ναι το πανί, ροδίτικο το χτένι,"
            "Ροδίτισσα κι η κοπελιά που κάθεται και υφαίνει."
          }
        }
      }
    }
    \combine \null \vspace #1
    \fill-line {
      \column {
        \line { \bold "Ρ1-2."
          \column {
            "Γαϊτανάκι μου πλεγμένο, στην ανέμη τυλιγμένο."
          }
        }
      }
    }
    \combine \null \vspace #0.1
    \fill-line {
      \column {
        \line { \bold "Ρ3."
          \column {
            "Γαϊτανάκι και μπιρσίμι* μου ’στειλαν από τη Σύμη,"
            "για να ράψουν οι κοπέλες των αντρών τους τις φανέλες."
          }
        }
      }
    }
    \combine \null \vspace #0.1
    \fill-line {
      \column {
        \line { \bold "*"
          \column {
            "μπιρσίμι: μεταξωτό νήμα"
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