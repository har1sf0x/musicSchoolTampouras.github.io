\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Ντε βρε ντε"
pieceSubtitle = "Μελί, Μικρά Ασία"
pieceFilename = "Ντε_βρε_ντε"
source = ""
keyA = \setUssakKey
keyB = \setUssakBKey

melody = \relative c'' {
  \setKalamTime
  \normalsize
  \repeat unfold 2 {
    \RastChord 8. \arrowDown \FbCbChord 16 \arrowZeybekB \RastChord 8 \arrowUp
    \ADAChord 4 \arrowDown  \hiddenGraceArrow \arrowSelpe \ADAChord 8 \arrowDown \ADAChord 8 \arrowUp
  }
  e8.-1\arrowDown e16-1\arrowZeybekB d8-1\arrowUp d8.-1\arrowDown c16-1\arrowSelpe c8-1\arrowDown bfc-5\arrowDown
  c8-1\arrowDown c-1\arrowUp bfc16-5\arrowDown (g-0)
  \ADAChord 4 \arrowDown \hiddenGraceArrow \arrowSelpe \ADAChord 8 \arrowDown \ADAChord 8 \arrowUp

  \RastChord 8. \arrowDown \FbCbChord 16 \arrowZeybekB \RastChord 8 \arrowUp
  \ADAChord 4 \arrowDown  \hiddenGraceArrow \arrowSelpe \ADAChord 8 \arrowDown \ADAChord 8 \arrowUp
  \RastChord 8. \arrowDown \FbCbChord 16 \arrowZeybekB \RastChord 8 \arrowUp
  \ADAChord 8. \arrowDown bfc16-1\arrowZeybekB c8-1\arrowUp d-1\arrowUp
  e8.-1\arrowDown e16-1\arrowZeybekB d8-1\arrowUp d8.-1\arrowDown c16-1\arrowSelpe c8-1\arrowDown bfc-5\arrowDown
  c8-1\arrowDown c-1\arrowUp bfc16-5\arrowDown (g-0)
  \ADAChord 4 \arrowDown \hiddenGraceArrow \arrowSelpe \ADAChord 8 \arrowDown \tiny a8-0\arrowDown | \break
  \repeat volta 4 {
    d4-1\arrowDown d8-1\arrowDown d-1\arrowDown (a-0) d-1\arrowDown (a-0)
    d8-1\arrowDown c8-1\arrowDown d-1\arrowDown e4-1\arrowDown \trill e8-1\arrowDown d-1\arrowDown
    c4-1\arrowDown \trill e8-3\arrowDown d8-1\arrowDown (a-0) d8-1\arrowDown (a-0)
    a8-0\arrowDown bfc-5\arrowDown c-1\arrowDown d8-1\arrowDown (a-0) d8-1\arrowDown (a-0)
    \normalsize c8.-1\arrowDown \trill c16-1\arrowZeybekB e8-3\arrowUp d4-1\arrowDown \hiddenGraceArrow \arrowSelpe d8-1\arrowDown a-0\arrowUp
    a8.-0\arrowDown bfc16-1\arrowZeybekB c8-1\arrowUp d4-1\arrowDown \hiddenGraceArrow \arrowSelpe d8-1\arrowDown \tiny g,-0\arrowDown
    a4-0-5\arrowDown bfc8-1\arrowDown c16-3\arrowDown (bfc-1 c-1 d-3) c8-1\arrowDown bfc-5\arrowDown
    \acciaccatura c16-1\arrowDown d8-1 d-1\arrowDown c-1\arrowDown bfc4-1\arrowDown \vibrato bfc8-1\arrowDown a-0\arrowUp
    g16-1\arrowDown g-1\arrowDown fb8-1\arrowDown g-2\arrowDown a4-0\arrowDown a8-0\arrowDown a-0\arrowUp
    g16-1\arrowDown g-1\arrowDown fb8-1\arrowDown g-2\arrowDown a4-0\arrowDown a8-0\arrowDown a-0\arrowUp
    e'4-1\arrowDown d8-1\arrowDown d-1\arrowDown (c-1) c-1\arrowDown bfc8-5\arrowDown
    c8-1\arrowDown c-1\arrowUp bfc16-5\arrowDown (g) \ADAChord 4 \arrowDown \normalsize \ADAChord 8 \arrowDown \ADAChord 8 \arrowUp
    \RastChord 8. \arrowDown \FbCbChord 16 \arrowZeybekB \RastChord 8 \arrowUp
    \ADAChord 4 \arrowDown  \grace s16^\arrowSelpe \ADAChord 8 \arrowDown \ADAChord 8 \arrowUp
    \RastChord 8. \arrowDown \FbCbChord 16 \arrowZeybekB \RastChord 8 \arrowUp
    \ADAChord 8. \arrowDown bfc16-1\arrowZeybekB c8-1\arrowUp d-1\arrowUp
    e8.-1\arrowDown e16-1\arrowZeybekB d8-1\arrowUp d8.-1\arrowDown c16-1\arrowSelpe c8-1\arrowDown bfc-5\arrowDown
    \alternative {
      \volta 1,2,3 {
        c8-1\arrowDown c-1\arrowUp bfc16-5\arrowDown (g-0)
        \ADAChord 4 \arrowDown \grace s16^\arrowSelpe \ADAChord 8 \arrowDown \tiny a8-0\arrowDown
      }
      \volta 4 {
        \normalsize c8-1\arrowDown c-1\arrowUp bfc16-5\arrowDown (g-0)) \ADAChord 2 \arrowDown \FBarline
      }
    }
  }
}

verseOne = \lyricmode {
  \set fontSize = #-8
  <<
    \new Lyrics {
      \set associatedVoice = "one"
      % \repeat unfold 25 {_ _}
      % \set stanza = "1."
      \repeat unfold 24 {_ _} _
      "1."
      Να 'χα μια πέ -- "τρ' α" -- μάν _ α -- μάν __ _ _ άι -- ντε ντε _ ντε __ _ βρε ντε
      \repeat unfold 6 {_ _}
      να σου 'κα -- να _ βρα -- χιό -- λια κα -- λέ _ _ άι _ _ -- ντε ντε _ _ ντε __ _ _ βρε ντε _ η
      κό -- ρη θέ _ -- λει με _ τα με
      % \repeat unfold 13 {_ _} _
      % \set stanza = "2." Να
      \repeat unfold 13 {_ _}
      "2." Να
    }
    % \new Lyrics {
    %   \set associatedVoice = "one"
    %   \set stanza = "1β."
    %   για 'βγά -- τε _ ιδέ -- στε μά -- θε _ -- τε ν'οπ' ο Χρι _ -- στός _ γεν -- νιέ _ _ -- ται. Γεν... πόρ -- τα
    % }
  >>
}

extraVerses = \markup {
  \fill-line {
    \column {
      \line { \bold "1."
        \column {
          "Να ‘χα μια πέτρα αμάν αμάν άιντε ντε ντε βρε ντε,"
          "να σου ‘κανα βραχιόλια καλέ άιντε ντε  ντε βρε ντε,"
          "η κόρη θέλει με τα ‘με."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "2."
        \column {
          "Να βάζεις στα χεράκια σου άιντε ντε ντε βρε ντε,"
          "που είν’ άσπρα σαν τα χιόνια καλέ άιντε ντε ντε βρε ντε,"
          "πάντρεψέ με μάνα ντε."
        }
      }
    }
    \column {
      \line { \bold "3."
        \column {
          "Να ‘μουνα πέτρα και μυστρί άιντε ντε ντε βρε ντε,"
          "και λάσπη να με χτίζεις καλέ άιντε ντε ντε βρε ντε,"
          "η κόρη θέλει με τα ‘με."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "4."
        \column {
          "Να ‘μουν και χερομάντηλο άιντε ντε ντε βρε ντε,"
          "τον ίδρο να σκουπίζεις καλέ άιντε ντε ντε βρε ντε,"
          "πάντρεψέ με μάνα ντε."
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
  paper-height = 250\mm
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