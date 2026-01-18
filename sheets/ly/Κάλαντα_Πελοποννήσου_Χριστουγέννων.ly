\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Κάλαντα Πελοποννήσου"
pieceSubtitle = "Κάλαντα Χριστουγέννων"
pieceFilename = "Κάλαντα_Πελοποννήσου_Χριστουγέννων"
source = ""
keyA = \setRastKey
keyB = \setRastBKey

melody = \relative c'' {
  \setFourTime
  \partial 4 d,4-0\arrowDown
  \repeat volta 2 {
    \RastChord 4 \arrowDown \RastChord 8 \arrowDown \RastChord 8 \arrowUp \ADAChord 4 \arrowDown \ADAChord 4 \arrowUp
    bfc'8-1\arrowDown (c-3) bfc-1\arrowDown a-0\arrowUp \RastChord 4 \arrowDown \RastChord 4 \arrowUp
    c8-3\arrowDown (bfc-1) c-1\arrowDown d-3\arrowUp bfc-5\arrowDown a-0\arrowUp bfc-5\arrowDown (g-0)
    \alternative {
      \volta 1 {
        \once \override TextScript.script-priority = #-100
        \ADAChord 4 \arrowDown \ADAChord 8 \arrowDown \ADAChord 8 \arrowUp \ADAChord 4 \arrowDown d4-0\arrowDown
      }
      \volta 2 {
        \ADAChord 2 {\arrowDown \fermata} \ADAChord 4 {\arrowDown \fermata} \FBarline
      }
    }
  }
}

verseOne = \lyricmode {
  \set fontSize = #-3 
  <<
    \new Lyrics {
      \set associatedVoice = "one"
      \set stanza = "1α."
      Χρι -- στού -- γεν _ -- να, Πρω -- τού -- γεν _ -- να πρώ -- τη γιορ _ -- τή _ του χρό _ _ -- νου, για
    }
    \new Lyrics {
      \set associatedVoice = "one"
      \set stanza = "1β."
      για 'βγά -- τε _ ιδέ -- στε μά -- θε _ -- τε ν'οπ' ο Χρι _ -- στός _ γεν -- νιέ _ _ -- ται. Γεν... πόρ -- τα
    }
  >>
}

%{
  Χριστούγεννα, Πρωτούγεννα, πρώτη γιορτή του χρόνου,
  για ’βγάτε, ιδέστε, μάθετε ν’ οπ’ ο Χριστός γεννιέται.
  Γεννιέται κι ανατρέφεται στο μέλι και στο γάλα.
  Το μέλι τρων οι άρχοντες, το γάλα οι αφεντάδες
  και το μελισσοχόρταρο το λούζουντ’ οι κυράδες.

  Αφέντη, αφέντη, ολόφαντε, πέντε βολές αφέντη,
  πέντε βολές αφέντεψες και πάλι αφέντης είσαι.
  Εσένα πρέπει, αφέντη μου, καρέκλα καρυδένια
  για ν’ ακουμπάς τη μέση σου τη μαργαριταρένια.
  
  Κυρά ψηλή, κυρά λιγνή, κυρά γαϊτανοφρύδα,
  κυρά μ’ όντας στολίζεσαι και πας στην Εκκλησιά σου,
  βάνεις τον ήλιο πρόσωπο και το φεγγάρι αγκάλη,
  και τον καθάριο αυγερινό τον βάνεις δαχτυλίδι,
  κάλλιο λάμπει το δάχτυλο, παρά το δαχτυλίδι.
  
  Καλά είπαμε και της κυράς, να ειπούμε και της κόρης (ή: του γιού της).
  Συμπεθεριό πάει κι έρχεται ‘ν’ από μακριά τα ξένα
  γυρεύουν (ή: μας δίνουν) μύλους δώδεκα μ’ ουλούς τους μυλωνάδες.
  Γυρεύουν βόδια του ζυγού μ’ ουλούς τους ζευγολάτες.
  
  Εδώ που τραγουδήσαμε πέτρα να μη ραΐσει,
  και ο νοικοκύρης του σπιτιού χρόνους πολλούς να ζήσει.
  Εμείς εδώ δεν ήρθαμε να φάμε και να πιούμε,
  παρά σας αγαπούσαμε κι ήρθαμε να σας δούμε.
  Δώστε μας και τον κόκορα, δώστε μας και την κότα,
  δώστε μας και πέντ’ έξ’ αβγά να πάμε σ’ άλλη πόρτα.
  Και εις έτη πολλά!

%}

extraVerses = \markup {
  \fill-line {
    \column {
      \vspace #.5
      \line { \bold "1."
        \column {
          "Χριστούγεννα, Πρωτούγεννα, πρώτη γιορτή του χρόνου,"
          "για ’βγάτε, ιδέστε, μάθετε ν’ οπ’ ο Χριστός γεννιέται."
          "Γεννιέται κι ανατρέφεται στο μέλι και στο γάλα."
          "Το μέλι τρων οι άρχοντες, το γάλα οι αφεντάδες"
          "και το μελισσοχόρταρο το λούζουντ’ οι κυράδες."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "2."
        \column {
          "Αφέντη, αφέντη, ολόφαντε, πέντε βολές αφέντη,"
          "πέντε βολές αφέντεψες και πάλι αφέντης είσαι."
          "Εσένα πρέπει, αφέντη μου, καρέκλα καρυδένια"
          "για ν’ ακουμπάς τη μέση σου τη μαργαριταρένια."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "3."
        \column {
          "Κυρά ψηλή, κυρά λιγνή, κυρά γαϊτανοφρύδα,"
          "κυρά μ’ όντας στολίζεσαι και πας στην Εκκλησιά σου,"
          "βάνεις τον ήλιο πρόσωπο και το φεγγάρι αγκάλη,"
          "και τον καθάριο αυγερινό τον βάνεις δαχτυλίδι,"
          "κάλλιο λάμπει το δάχτυλο, παρά το δαχτυλίδι."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "4."
        \column {
          "Καλά είπαμε και της κυράς, να ειπούμε και της κόρης (ή: του γιού της)."
          "Συμπεθεριό πάει κι έρχεται ‘ν’ από μακριά τα ξένα"
          "γυρεύουν (ή: μας δίνουν) μύλους δώδεκα μ’ ουλούς τους μυλωνάδες."
          "Γυρεύουν βόδια του ζυγού μ’ ουλούς τους ζευγολάτες."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "5."
        \column {
          "Εδώ που τραγουδήσαμε πέτρα να μη ραΐσει,"
          "και ο νοικοκύρης του σπιτιού χρόνους πολλούς να ζήσει."
          "Εμείς εδώ δεν ήρθαμε να φάμε και να πιούμε,"
          "παρά σας αγαπούσαμε κι ήρθαμε να σας δούμε."
          "Δώστε μας και τον κόκορα, δώστε μας και την κότα,"
          "δώστε μας και πέντ’ έξ’ αβγά να πάμε σ’ άλλη πόρτα."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold ""
        \column {
          "Και εις έτη πολλά!"
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
%   paper-height = 220\mm
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