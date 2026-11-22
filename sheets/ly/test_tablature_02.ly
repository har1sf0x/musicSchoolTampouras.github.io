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


RastChords =
#(define-music-function (dur arrow) (ly:duration? ly:music?) #{
  \fixed c' { \omit StringNumber <g \single \greyNote d' \single \greyNote  g\2> $dur -4-3 $arrow \undo \omit StringNumber }  % Notes with $ prefix use the duration argument
#})

% ADAChords =
% #(define-music-function (dur arrow) (ly:duration? ly:music?) #{
%   \fixed c' { \omit StringNumber <a\3  \single \greyNote d\2 \single \greyNote  a\1 > $dur -5 \undo \omit StringNumber }  % Notes with $ prefix use the duration argument
% #})

ADAChords =
#(define-music-function (dur arrow) (ly:duration? ly:music?) #{
  \once \omit StringNumber
  \fixed c' { <a\3  \single \greyNote d\2 \single \greyNote  a\1 > $dur -5 }
#})

% ADAChords =
% #(define-music-function (dur arrow) (ly:duration? ly:music?) #{
%   \fixed c' {<a $arrow \single \greyNote d \single \greyNote  a> $dur -5}  % Notes with $ prefix use the duration argument
% #})

\layout {
  \override Fingering.script-priority = #-200
  \context {
    \TabStaff
    stringTunings = \stringTuning <g' d' a'>
    tablatureFormat = #makam-tab-format
  }
  \context {
    \TabVoice
    \consists "Fingering_engraver"
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

pieceOrig = \relative c'' {
      g4\3\arrowDown a ab %{\once \omit StringNumber%} bfb\3-5\arrowDown bfc^\one\arrowDown c\1 d e fb g f e d c bfc a g\3
      \RastChords 4 \arrowDown
      \ADAChords 4 \arrowSelpe (g4\3)
      % \ADAChord 4 \arrowSelpe (g4)

    }

\score {
  \new TabStaff {
    \tabFullNotation
    \override Stem.transparent = ##t
    \override Beam.transparent = ##t

    \pieceOrig
    
  }
  % \new TabStaff {
  %   \tabFullNotation
  %   \stemUp
  %   e8\4^\one b\2 <g\3 e'\1>^>[ b\2 e\4]
  %   <a\3 fb'\1>^>^\threeTwo[ b\2 e\4]
  % }
}
pieceFilename = "test_tablature_02"
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
            % \verseOne
          }
        >>
      }
    }
    % \extraVerses
  }
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
