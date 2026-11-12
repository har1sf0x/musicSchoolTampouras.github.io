\version "2.24.0"
\include "utilities_01.ly"

% #(define (makam-tab-format context string-number fret)
%    (make-whiteout-markup (make-vcenter-markup (format #f "~a" fret))))

#(define (makam-tab-format context string-number fret)
   (let* ((f  (inexact->exact fret))
          (up (ceiling f))
          (d  (- up f)))        ; distance below the upper fret, in semitones
     (make-whiteout-markup
      (make-vcenter-markup
       (if (zero? d)
           (number->string up)
           (make-concat-markup
            (list (number->string up)
                  (make-magnify-markup
                   0.7
                   (make-raise-markup
                    0.3
                    (make-musicglyph-markup
                     (if (< d 1/2)
                         "accidentals.mirroredflat"    ; bfc: d = 1/6
                         "accidentals.flat.slash")))))))))))  %; bfb: d = 5/6

\layout {
  \context {
    \TabStaff
    stringTunings = \stringTuning <g' d' a'>
    tablatureFormat = #makam-tab-format
  }
}

one = \markup { \finger 1 }
two = \markup { \finger 2 }
threeTwo = \markup {
  \override #'(baseline-skip . 2)
  \column {
    \finger 3
    \finger 2
  }
}

\score {
  \new TabStaff {
    \tabFullNotation
    \override Stem.transparent = ##t
    \override Beam.transparent = ##t
    \relative c'' {
      g4\3\arrowDown a ak bfb^\3 bfc^\one\arrowDown c d e fb g f e d c bfc a g\3
      % \RastChord 4 \arrowDown

    }
  }
  % \new TabStaff {
  %   \tabFullNotation
  %   \stemUp
  %   e8\4^\one b\2 <g\3 e'\1>^>[ b\2 e\4]
  %   <a\3 fb'\1>^>^\threeTwo[ b\2 e\4]
  % }
}



% \version "2.24.0"

% #(define (accidental-fret-format context string-number fret)
%    (let* ((base-fret (inexact->exact (floor fret)))
%           (frac (- fret base-fret)))
%      (cond
%        ((= frac 0)
%         (number->string base-fret))
%        ((= frac 1/2) ; Quarter-tone sharp (half a fret)
%         (markup #:concat (
%           #:number (number->string base-fret)
%           #:hspace 0.2
%           #:raise 0.5 #:fontsize -2 #:musicglyph "accidentals.sharp.slashslash.stem"
%         )))
%        (else ; Fallback for other fractions
%         (number->string fret)))))

% music = \relative c' {
%   c4 cih cis cisih d2
% }

% \score {
%   <<
%     \new Staff { \clef "treble_8" \music }
%     \new TabStaff \with {
%       tablatureFormat = #accidental-fret-format
%     } { \music }
%   >>
% }



% \version "2.24.0"

% #(define-public customPitches
%   `(
%     (c . ,(ly:make-pitch -1 0 0))
%     (c-third . ,(ly:make-pitch -1 0 1/6))     ; 1/3 semitone sharp (33.3 cents)
%     (c-twothird . ,(ly:make-pitch -1 0 4/6))  ; 2/3 semitone sharp (66.7 cents)
%     (cis . ,(ly:make-pitch -1 0 1/2))         ; 1 semitone sharp (100 cents)
%     (d . ,(ly:make-pitch -1 1 0))
%   ))

% #(ly:parser-set-note-names customPitches)

% \score {
%   \new TabStaff \with {
%     supportNonIntegerFret = ##t
%   } {
%     c'4 c-third' c-twothird' cis' d'2
%   }
% }
