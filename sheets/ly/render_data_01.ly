\version "2.24.4"

\header {
  title = \pieceName
  subtitle = \pieceSubtitle
  copyright = "Χ. Κόχυλας"
}
\layout {
  \omit StringNumber
  \override StringNumber.script-priority = #-400
  \override LyricText.font-size=#-2
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
  \omit Fingering
  % \context {
  %   \Staff
  %   \consists Measure_spanner_engraver
  % }
  \context {
    \Voice
    \customScripts #hideArrowsArticulationNear
  }
  % \context {
  %   \Staff
  %   \override NoteCollision.merge-differently-dotted = ##t
  %   \override NoteCollision.merge-differently-headed = ##t
  % }
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
            % \customScripts #hideArrowsArticulationNear
            \pieceOrig
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
  \undo \omit StringNumber
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
  \undo \omit Fingering
  \context {
    \Voice
    \customScripts #hideArrowsArticulationNear
  }
}
\book {
  \bookOutputName #(string-append pieceFilename "_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            % \customScripts #hideArrowsArticulationNear
            \pieceOrig
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
  \omit StringNumber
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
  \omit Fingering
  \context {
    \Voice
    \customScripts #articulationNear
  }
}
\book {
  \bookOutputName #(string-append pieceFilename "_πενιές")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            % \customScripts #articulationNear
            \pieceOrig
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
  \undo \omit StringNumber
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
  \undo \omit Fingering
  \context {
    \Voice
    \customScripts #articulationNear
  }
}
\book {
  \bookOutputName #(string-append pieceFilename "_πενιές_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            % \customScripts #articulationNear
            \pieceOrig
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
  \omit StringNumber
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
  \omit Fingering
  \context {
    \Voice
    \customScripts #hideArrowsArticulationNear
  }
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            % \customScripts #hideArrowsArticulationNear
            \pieceTrans
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
  \undo \omit StringNumber
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
  \undo \omit Fingering
  \context {
    \Voice
    \customScripts #hideArrowsArticulationNear
  }
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            % \customScripts #hideArrowsArticulationNear
            \pieceTrans
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
  \omit StringNumber
  \override Fingering.transparent = ##t
  \override Fingering.script-priority = #100
  \omit Fingering
  \context {
    \Voice
    \customScripts #articulationNear
  }
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_πενιές")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            % \customScripts #articulationNear
            \pieceTrans
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
  \undo \omit StringNumber
  \override Fingering.transparent = ##f
  \override Fingering.script-priority = #-200
  \undo \omit Fingering
  \context {
    \Voice
    \customScripts #articulationNear
  }
}
\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο_πενιές_δάχτυλα")
  \bookpart {
    \score { \context Staff = "baglama" {%\with {instrumentName = "Ταμπουράς"} {
        <<
          \new Voice = "one" {
            % \customScripts #articulationNear
            \pieceTrans
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