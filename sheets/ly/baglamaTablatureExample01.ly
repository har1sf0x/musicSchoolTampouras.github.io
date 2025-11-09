\version "2.24.0"
\include "turkish-makam.ly"

% Define custom tuning (e.g., for a 4-string instrument)
customTuning = \stringTuning <g' d' a'>
arrowDown = \markup {
  \fontsize #-1
  \override #'(thickness . 1.38)
  \translate #'(0.65 . 0) {
    \combine
      \translate #'(0 . .45) \draw-line #'(0 . 1.6)
      \arrow-head #Y #DOWN ##f
  }
}
arrowUp = \markup {
  \scale #'(1 . -1) \arrowDown
}
\score {
  <<
  
    \new Staff {
      \clef "treble"
      \relative c' {
        e4 a bfc c^\arrowUp
      }
    }
    \new TabStaff \with {stringTunings = \customTuning}
    {
      \relative c' {
        e4 <a\3 d,\2 a'\1> b c^\arrowUp
      }
    }
  >>
}