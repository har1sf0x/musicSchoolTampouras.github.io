\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Ένα μικρό φυντάνι"
pieceSubtitle = "Προποντίδα, Νικομήδεια"
pieceFilename = "Ένα_μικρό_φυντάνι"
source = ""
keyA = \setRastKey
keyB = \setRastBKey

melody = \relative c'' {
  \time 2/4
  \ADAChord 8 \arrowDown bfc16-1\arrowDown bfc-1\arrowUp c8-1\arrowDown d8-3\arrowUp
  bfc8-1\arrowDown bfc16-1\arrowDown bfc-1\arrowUp bfc8-1\arrowDown g-0\arrowDown
  \ADAChord 8 \arrowDown a16-0\arrowDown a-0\arrowUp \RastChord 8 \arrowDown \FbCbChord 8 \arrowUp
  \RastChord 8 \arrowDown \RastChord 16 \arrowDown \RastChord 16 \arrowUp
  \RastChord 8 \arrowDown \RastChord 8 \arrowUp \FBarline
}

verseOne = \lyricmode {
  \set fontSize = #-2 
  \new Lyrics {
    \set associatedVoice = "one"
    \set stanza = "1."
    Έ _ _ _ _ -- να, _ _ _ έ -- να μι _ -- κρό φυ -- ντά _ _ -- νι,
  }
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
  \fill-line {
    \column {
      \line { \bold "1."
        \column {
          "Ένα, ένα μικρό φυντάνι,"
          "φυντά-, φυντάνι φυντανάκι,"
          "αξιώ-, αξιώνει κι αναδίνει"
          "καρπό, καρπό και άνθη δίνει."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "2."
        \column {
          "Λίγο, λίγο νερό σταλάκι"
          "να τρέ-, να τρέξει το φαρμάκι,"
          "να μη, να μη μαραγκιασθούνε"
          "κι όλα, κι όλα να μη χαθούνε."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "3."
        \column {
          "Μη μα-, μη μαραθούν τα φύλλα"
          "και πέ-, και πέσουνε τα μήλα. x2"
        }
      }
    }
  }
}

extraVersesA = \markup {
  \fill-line {
    \column {
      \line { \bold "3."
        \column {
          "Μη μα-, μη μαραθούν τα φύλλα"
          "και πέ-, και πέσουνε τα μήλα. x2"
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
  paper-height = 130\mm
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