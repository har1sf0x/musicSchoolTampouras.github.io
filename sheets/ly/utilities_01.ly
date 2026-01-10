\version "2.24.4"

\include "turkish-makam.ly"

arrowDownMarkup = \markup {
  \fontsize #-1
  \override #'(thickness . 1.38)
  \translate #'(0.65 . 0) {
    \combine
      \translate #'(0 . .45) \draw-line #'(0 . 1.6)
      \arrow-head #Y #DOWN ##f
  }
}

arrowUpMarkup = \markup {
  \scale #'(1 . -1) \arrowDownMarkup
}

arrowDownSmallMarkup = \markup {
  \scale #'(1 . .5) \arrowDownMarkup
}

arrowUpSmallMarkup = \markup {
  \scale #'(1 . .5) \arrowUpMarkup
}

arrowSilifkeMarkup = \markup {
  \combine
    \arrowDownMarkup
    \combine
      \teeny \translate #'(0.65 . 1.4) \arrow-head #Y #DOWN ##f
      \teeny \translate #'(0.65 . 1.8) \arrow-head #Y #UP ##f
}

arrowZeybekMarkup = \markup {
  \scale #'(1 . -1) \arrowSilifkeMarkup
}

arrowZeybekBMarkup = \markup {
  \fontsize #-1
  \override #'(thickness . 1.38)
  \combine
    \translate #'(0.65 . -.2) \draw-line #'(0 . 0.8)
    \combine
      \teeny \translate #'(0.65 . .4) \arrow-head #Y #DOWN ##f
      \teeny \translate #'(0.65 . .8) \arrow-head #Y #UP ##f
}

arrowSilifkeBMarkup = \markup {
  \scale #'(1 . -1) \arrowZeybekBMarkup
}

arrowSelpeMarkup = \markup {
  \combine
    \scale #'(1 . -1) \arrowDownMarkup
    \combine
      \translate #'(0.65 . -0.5) \arrow-head #Y #UP ##f
      \translate #'(0.65 . -1) \arrow-head #Y #UP ##f
}

arrowTalipOzkanMarkup = \markup {
  \scale #'(1 . -1) \arrowSelpeMarkup
}

vibratoMarkup = \markup {"vib."}

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
setHicazKey = \set Staff.keyAlterations = #`((6 . ,(- BAKIYE)) (3 . , BAKIYE) (0 . , BAKIYE))
setHicazBKey = \set Staff.keyAlterations = #`((2 . ,(- BAKIYE)) (6 . , (- KOMA)))

setZeybekTime = {
  \time 9/4
  \set Timing.beatStructure = 1,1,1,1,1,1,1,1,1
}

setKalamTime = {
  \time 7/8
  \set Timing.beatStructure = 3,2,2
}

setZonaradikosTime = {
  \time 6/8
  \set Timing.beatStructure = 3,3
}

setFourTime = {
  \overrideTimeSignatureSettings
    4/4        % timeSignatureFraction
    1/4        % baseMomentFraction
    1,1,1,1        % beatStructure
    #'()       % beamExceptions
  \time 4/4
  \numericTimeSignature
}

RastChord =
#(define-music-function (dur arrow) (ly:duration? ly:music?) #{
  \fixed c' {<<g$dur -4-3 $arrow \single \greyNote d' \single \greyNote  g>>}  % Notes with $ prefix use the duration argument
#})

GDChord =
#(define-music-function (dur arrow) (ly:duration? ly:music?) #{
  \fixed c' {<<g$dur -0 $arrow \single \greyNote d>>}  % Notes with $ prefix use the duration argument
#})

ADAChord =
#(define-music-function (dur arrow) (ly:duration? ly:music?) #{
  \fixed c' {<<a$dur -5 $arrow \single \greyNote d \single \greyNote  a>>}  % Notes with $ prefix use the duration argument
#})

ADChord =
#(define-music-function (dur arrow) (ly:duration? ly:music?) #{
  \fixed c' {<<a$dur -5 $arrow \single \greyNote d>>}  % Notes with $ prefix use the duration argument
#})

AEAChord =
#(define-music-function (dur arrow) (ly:duration? ly:music?) #{
  \fixed c' {<<a$dur -2-0 $arrow \single \greyNote e \single \greyNote  a>>}  % Notes with $ prefix use the duration argument
#})

AEChord =
#(define-music-function (dur arrow) (ly:duration? ly:music?) #{
  \fixed c' {<<a$dur -2-0 $arrow \single \greyNote e>>}  % Notes with $ prefix use the duration argument
#})

BfbDDChord =
#(define-music-function (dur arrow) (ly:duration? ly:music?) #{
  \fixed c' {<<bfb$dur -4-5 $arrow \single \greyNote d \single \greyNote d'>>}  % Notes with $ prefix use the duration argument
#})

BfcGDChord =
#(define-music-function (dur arrow) (ly:duration? ly:music?) #{
  \fixed c' {<<bfc$dur -4-3-5 $arrow \single \greyNote g \single \greyNote  d'>>}  % Notes with $ prefix use the duration argument
#})

FbCbChord =
#(define-music-function (dur arrow) (ly:duration? ly:music?) #{
  \fixed c' {<<fb$dur -1 $arrow \single \greyNote cb'>>}  % Notes with $ prefix use the duration argument
#})

ECbAChord =
#(define-music-function (dur arrow) (ly:duration? ly:music?) #{
  \fixed c'' {<<e$dur -2-3-5 $arrow \single \greyNote cb \single \greyNote a,>>}  % Notes with $ prefix use the duration argument
#})

hiddenGraceArrow =
#(define-music-function (arrow) (ly:music?) #{
  \grace s8 $arrow % Notes with $ prefix use the duration argument
#})

% hiddenGraceArrow =
% #(define-music-function (arrow) (ly:music?) #{
%   \hideNotes \grace s8 $arrow \unHideNotes % Notes with $ prefix use the duration argument
% #})

#(set! default-script-alist (acons
  'arrowDown `(
    (stencil . ,(
      lambda (grob) (let ((d (ly:grob-property grob 'direction UP))
        (mstc (grob-interpret-markup grob (markup
          #:override '(font-encoding . latin1)
          #:center-align arrowDownMarkup ))))
      (if (= d UP)
        mstc
        (ly:stencil-rotate
          mstc 0 0 (interval-center (ly:stencil-extent mstc Y))))
        )
      )
    ) (direction . ,UP)) default-script-alist
  )
)

#(set! default-script-alist (acons
  'arrowUp `(
    (stencil . ,(
      lambda (grob) (let ((d (ly:grob-property grob 'direction UP))
        (mstc (grob-interpret-markup grob (markup
          #:override '(font-encoding . latin1)
          #:center-align arrowUpMarkup ))))
      (if (= d UP)
        mstc
        (ly:stencil-rotate
          mstc 0 0 (interval-center (ly:stencil-extent mstc Y))))
        )
      )
    ) (direction . ,UP)) default-script-alist
  )
)

#(set! default-script-alist (acons
  'arrowDownSmall `(
    (stencil . ,(
      lambda (grob) (let ((d (ly:grob-property grob 'direction UP))
        (mstc (grob-interpret-markup grob (markup
          #:override '(font-encoding . latin1)
          #:center-align arrowDownSmallMarkup ))))
      (if (= d UP)
        mstc
        (ly:stencil-rotate
          mstc 0 0 (interval-center (ly:stencil-extent mstc Y))))
        )
      )
    ) (direction . ,UP)) default-script-alist
  )
)

#(set! default-script-alist (acons
  'arrowUpsmall `(
    (stencil . ,(
      lambda (grob) (let ((d (ly:grob-property grob 'direction UP))
        (mstc (grob-interpret-markup grob (markup
          #:override '(font-encoding . latin1)
          #:center-align arrowUpSmallMarkup ))))
      (if (= d UP)
        mstc
        (ly:stencil-rotate
          mstc 0 0 (interval-center (ly:stencil-extent mstc Y))))
        )
      )
    ) (direction . ,UP)) default-script-alist
  )
)

#(set! default-script-alist (acons
  'arrowSilifke `(
    (stencil . ,(
      lambda (grob) (let ((d (ly:grob-property grob 'direction UP))
        (mstc (grob-interpret-markup grob (markup
          #:override '(font-encoding . latin1)
          #:center-align arrowSilifkeMarkup ))))
      (if (= d UP)
        mstc
        (ly:stencil-rotate
          mstc 0 0 (interval-center (ly:stencil-extent mstc Y))))
        )
      )
    ) (direction . ,UP)) default-script-alist
  )
)

#(set! default-script-alist (acons
  'arrowZeybek `(
    (stencil . ,(
      lambda (grob) (let ((d (ly:grob-property grob 'direction UP))
        (mstc (grob-interpret-markup grob (markup
          #:override '(font-encoding . latin1)
          #:center-align arrowZeybekMarkup ))))
      (if (= d UP)
        mstc
        (ly:stencil-rotate
          mstc 0 0 (interval-center (ly:stencil-extent mstc Y))))
        )
      )
    ) (direction . ,UP)) default-script-alist
  )
)

#(set! default-script-alist (acons
  'arrowZeybekB `(
    (stencil . ,(
      lambda (grob) (let ((d (ly:grob-property grob 'direction UP))
        (mstc (grob-interpret-markup grob (markup
          #:override '(font-encoding . latin1)
          #:center-align arrowZeybekBMarkup ))))
      (if (= d UP)
        mstc
        (ly:stencil-rotate
          mstc 0 0 (interval-center (ly:stencil-extent mstc Y))))
        )
      )
    ) (direction . ,UP)) default-script-alist
  )
)

#(set! default-script-alist (acons
  'arrowSilifkeB `(
    (stencil . ,(
      lambda (grob) (let ((d (ly:grob-property grob 'direction UP))
        (mstc (grob-interpret-markup grob (markup
          #:override '(font-encoding . latin1)
          #:center-align arrowSilifkeBMarkup ))))
      (if (= d UP)
        mstc
        (ly:stencil-rotate
          mstc 0 0 (interval-center (ly:stencil-extent mstc Y))))
        )
      )
    ) (direction . ,UP)) default-script-alist
  )
)

#(set! default-script-alist (acons
  'arrowSelpe `(
    (stencil . ,(
      lambda (grob) (let ((d (ly:grob-property grob 'direction UP))
        (mstc (grob-interpret-markup grob (markup
          #:override '(font-encoding . latin1)
          #:center-align arrowSelpeMarkup ))))
      (if (= d UP)
        mstc
        (ly:stencil-rotate
          mstc 0 0 (interval-center (ly:stencil-extent mstc Y))))
        )
      )
    ) (direction . ,UP)) default-script-alist
  )
)

#(set! default-script-alist (acons
  'arrowTalipOzkan `(
    (stencil . ,(
      lambda (grob) (let ((d (ly:grob-property grob 'direction UP))
        (mstc (grob-interpret-markup grob (markup
          #:override '(font-encoding . latin1)
          #:center-align arrowTalipOzkanMarkup ))))
      (if (= d UP)
        mstc
        (ly:stencil-rotate
          mstc 0 0 (interval-center (ly:stencil-extent mstc Y))))
        )
      )
    ) (direction . ,UP)) default-script-alist
  )
)

#(set! default-script-alist (acons
  'vibrato `(
    (stencil . ,(
      lambda (grob) (let ((d (ly:grob-property grob 'direction UP))
        (mstc (grob-interpret-markup grob (markup
          #:override '(font-encoding . latin1)
          #:center-align vibratoMarkup ))))
      (if (= d UP)
        mstc
        (ly:stencil-rotate
          mstc 0 0 (interval-center (ly:stencil-extent mstc Y))))
        )
      )
    ) (direction . ,UP)) default-script-alist
  )
)

"arrowDown" = #(make-articulation 'arrowDown)
"arrowUp" = #(make-articulation 'arrowUp)
"arrowDownSmall" = #(make-articulation 'arrowDownSmall)
"arrowUpSmall" = #(make-articulation 'arrowUpsmall)
"arrowSilifke" = #(make-articulation 'arrowSilifke)
"arrowZeybek" = #(make-articulation 'arrowZeybek)
"arrowZeybekB" = #(make-articulation 'arrowZeybekB)
"arrowSilifkeB" = #(make-articulation 'arrowSilifkeB)
"arrowSelpe" = #(make-articulation 'arrowSelpe)
"arrowTalipOzkan" = #(make-articulation 'arrowTalipOzkan)
"vibrato" = #(make-articulation 'vibrato)

\layout { \context { \Score scriptDefinitions = #default-script-alist
{ \override Staff.Script.avoid-slur = #'around
  \override Staff.Script.padding = 0.6
  \override Fingering.staff-padding = #1.0
  \set stringNumberOrientations = #'(down)
  } } }

#(define (custom-script-tweaks ls)
  (lambda (grob)
    (let* ((type (ly:event-property
                    (ly:grob-property grob 'cause)
                    'articulation-type))
           (tweaks (assoc-ref ls type)))
      (if tweaks
          (for-each
            (lambda (x) (ly:grob-set-property! grob (car x) (cdr x)))
            tweaks)))))

customScripts =
#(define-music-function (settings) (list?)
#{
  \override Script.before-line-breaking =
    #(custom-script-tweaks settings)
#})

revertCustomScripts = \revert Script.before-line-breaking

% Predefine a list of desired tweaks.
#(define hideArrows
  '(
      (arrowDown . ((stencil . #f)))
      (arrowUp . ((stencil . #f)))
      (arrowDownSmall . ((stencil . #f)))
      (arrowUpsmall . ((stencil . #f)))
      (arrowSilifke . ((stencil . #f)))
      (arrowZeybek . ((stencil . #f)))
      (arrowZeybekB . ((stencil . #f)))
      (arrowSilifkeB . ((stencil . #f)))
      (arrowSelpe . ((stencil . #f)))
      (arrowTalipOzkan . ((stencil . #f)))
    ))

#(define hideArrowsArticulationNear
  '(
      (arrowDown . ((stencil . #f)))
      (arrowUp . ((stencil . #f)))
      (arrowDownSmall . ((stencil . #f)))
      (arrowUpsmall . ((stencil . #f)))
      (arrowSilifke . ((stencil . #f)))
      (arrowZeybek . ((stencil . #f)))
      (arrowZeybekB . ((stencil . #f)))
      (arrowSilifkeB . ((stencil . #f)))
      (arrowSelpe . ((stencil . #f)))
      (arrowTalipOzkan . ((stencil . #f)))
      (fermata . ((script-priority . -300)))
      (trill . ((script-priority . -300)))
      (vibrato . ((script-priority . -300)))
    ))

#(define articulationNear
  '(
      (fermata . ((script-priority . -300)))
      (trill . ((script-priority . -300)))
      (vibrato . ((script-priority . -300)))
    ))


restDownUp = {
  << { r4 }
    \new Voice { s8\arrowDown s\arrowUp }
  >> \oneVoice
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