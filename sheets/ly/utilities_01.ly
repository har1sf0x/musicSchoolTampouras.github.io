\version "2.24.4"

\include "turkish-makam.ly"

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

arrowSilifke = \markup {
  \combine
    \arrowDown
    \combine
      \teeny \translate #'(0.65 . 1.4) \arrow-head #Y #DOWN ##f
      \teeny \translate #'(0.65 . 1.8) \arrow-head #Y #UP ##f
}

arrowZeybek = \markup {
  \scale #'(1 . -1) \arrowSilifke
}

arrowZeybekB = \markup {
  \fontsize #-1
  \override #'(thickness . 1.38)
  \combine
    \translate #'(0.65 . -.2) \draw-line #'(0 . 0.8)
    \combine
      \teeny \translate #'(0.65 . .4) \arrow-head #Y #DOWN ##f
      \teeny \translate #'(0.65 . .8) \arrow-head #Y #UP ##f
}

arrowSilifkeB = \markup {
  \scale #'(1 . -1) \arrowZeybekB
}

arrowSelpe = \markup {
  \combine
    \scale #'(1 . -1) \arrowDown
    \combine
      \translate #'(0.65 . -0.5) \arrow-head #Y #UP ##f
      \translate #'(0.65 . -1) \arrow-head #Y #UP ##f
}

arrowTalipOzkan = \markup {
  \scale #'(1 . -1) \arrowSelpe
}

SBarline = #(define-music-function () () #{\bar "|"#})
DotBarline = #(define-music-function () () #{\bar ";"#})
DsBarline = #(define-music-function () () #{\bar "!"#})
DBarline = #(define-music-function () () #{\bar "||"#})
FBarline = #(define-music-function () () #{\bar "|."#})
SRBarline = #(define-music-function () () #{\bar ".|:"#})
ERBarline = #(define-music-function () () #{\bar ":|."#})
DRBarline = #(define-music-function () () #{\bar ":|.|:"#})

greyNote = \override Voice.NoteHead.color = #(rgb-color 0.5 0.5 0.5) %\tweak color #(rgb-color 0.5 0.5 0.5)

setHuseyniKey = \set Staff.keyAlterations = #`((6 . ,(- KOMA)) (3 . , BAKIYE))
setHuseyniBKey = \set Staff.keyAlterations = #`((2 . ,(- KOMA)) (6 . , (- KOMA)))
setUssakKey = \set Staff.keyAlterations = #`((6 . ,(- KOMA)))
setUssakBKey = \set Staff.keyAlterations = #`((2 . ,(- KOMA)))
setRastKey = \set Staff.keyAlterations = #`((6 . ,(- KOMA)) (3 . , BAKIYE))
setRastBKey = \set Staff.keyAlterations = #`((2 . ,(- KOMA)) (6 . , (- KOMA)))

setZeybekTime = {
  \time 9/4
  \set Timing.beatStructure = 1,1,1,1,1,1,1,1,1
}

setKalamTime = {
  \time 7/8
  \set Timing.beatStructure = 3,2,2
}

%{
arrowUp = \markup {
  \fontsize #1
  \override #'(thickness . 1.38)
  \translate #'(0.65 . 0) {
    \combine
      \draw-line #'(0 . 1.55)
      \translate #'(0 . 2.11) \arrow-head #Y #UP ##f
  }
}
arrowZeybek = \markup {
  \fontsize #1
  \override #'(thickness . 1.38)
  \translate #'(0.65 . 0) {
    \combine
      \combine
        \draw-line #'(0 . 1.)
        \teeny \translate #'(0 . 0.) \arrow-head #Y #UP ##f
      \combine
        \teeny \translate #'(0 . -0.5) \arrow-head #Y #DOWN ##f
        \translate #'(0 . 1.48) \arrow-head #Y #UP ##f
  }
}
arrowSelpe = \markup {
  \fontsize #1
  \override #'(thickness . 1.38)
  \translate #'(0.65 . 0) {
    \combine
      \combine
        \draw-line #'(0 . .6)
        \translate #'(0 . 0.) \arrow-head #Y #UP ##f
      \combine
        \translate #'(0 . 0.5) \arrow-head #Y #UP ##f
        \translate #'(0 . 1) \arrow-head #Y #UP ##f
  }
}
%}