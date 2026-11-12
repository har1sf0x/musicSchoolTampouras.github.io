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

% tablature book

% #(define (makam-tab-format context string-number fret)
%    (let* ((f  (inexact->exact fret))
%           (up (ceiling f))
%           (d  (- up f)))        ; distance below the upper fret, in semitones
%      (make-whiteout-markup
%       (make-vcenter-markup
%        (if (zero? d)
%            (number->string up)
%            (make-concat-markup
%             (list (number->string up)
%                   (make-magnify-markup
%                    0.7
%                    (make-raise-markup
%                     0.3
%                     (make-musicglyph-markup
%                      (if (< d 1/2)
%                          "accidentals.mirroredflat"    ; bfc: d = 1/6
%                          "accidentals.flat.slash")))))))))))  %; bfb: d = 5/6

% \layout {
%   \context {
%     \TabStaff
%     stringTunings = \stringTuning <g' d' a'>
%     tablatureFormat = #makam-tab-format
%   }
% }

% \layout {
%   \undo \omit StringNumber
%   \override Fingering.transparent = ##f
%   \override Fingering.script-priority = #-200
%   \undo \omit Fingering
%   \context {
%     \Voice
%     \customScripts #articulationNear
%   }
% }
% \book {
%   \bookOutputName #(string-append pieceFilename "_tablature")
%   \bookpart {
%     \score {
%       \new TabStaff {
%         \tabFullNotation
%         \override Stem.transparent = ##t
%         \override Beam.transparent = ##t
%         \relative c'' {
%           \pieceOrig
%         }
%       }
%     }
%     \extraVerses
%   }
% }