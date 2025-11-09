\version "2.24.4"

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