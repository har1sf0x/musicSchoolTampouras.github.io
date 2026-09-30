\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Σαν απόψι τέτοιαν ώρα"
pieceSubtitle = "Μακεδονία"
pieceFilename = "Σαν_απόψι_τέτοιαν_ώρα"
source = ""
keyA = \setRastKey
keyB = \setRastBKey

% startGraceMusic = {
%   \hideNotes
%   \override Stem.transparent = ##t
%   \override Flag.transparent = ##t
%   \override Slur.transparent = ##t
% }

% stopGraceMusic = {
%   \unHideNotes
%   \revert Stem.transparent
%   \revert Flag.transparent
%   \revert Slur.transparent
% }

% startAcciaccaturaMusic = \startGraceMusic
% stopAcciaccaturaMusic  = \stopGraceMusic
% startAppoggiaturaMusic = \startGraceMusic
% stopAppoggiaturaMusic  = \stopGraceMusic

melodyA = \relative c'' {
  % \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  \set Score.alternativeNumberingStyle = #'numbers-with-letters
  % \time 2/4
  \setKalamTime
  \themeLabel "A"
  \repeat segno 2 {
    \repeat volta 2 {
      % measure 1
      \customDuoChord g d -0 8 \arrowDown c16-3\arrowDown bfc16-1\arrowUp a16-0\arrowDown c16-3\arrowUp
      bfc4-1\arrowDown \acciaccatura {\once \override Script.font-size = #0 bfc32-1\arrowSelpe a32-0} bfc8-1\arrowDown bfc8-1\arrowUp
      % measure 2
      \customDuoChord g d -0 8 \arrowDown c16-3\arrowDown bfc16-1\arrowUp a16-0\arrowDown c16-3\arrowUp
      bfc4-1\arrowDown \acciaccatura {c32-3 \once \override Script.font-size = #0 bfc32-1\arrowSelpe a32-0} bfc8-1\arrowDown bfc8-1\arrowUp
      % measure 3
      \customDuoChord g d -0 8 \arrowDown c16-3\arrowDown bfc16-1\arrowUp a16-0\arrowDown c16-3\arrowUp
      bfc4-1\arrowDown \acciaccatura {\once \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods \once \override Glissando.minimum-length = #2 \once \override Script.font-size = #0 \stemDown \once \override Slur.direction = #UP bfc16-1\arrowSelpe \glissando \stemNeutral} d8-3\arrowDown d8-3\arrowUp
      % measure 4
      c16-1\arrowDown d16-3\arrowUp bfc16-1\arrowDown c16-3\arrowUp a16-0\arrowDown bfc16-1\arrowUp
      \RastChord 4 \arrowDown \hiddenGraceArrow \arrowSelpe \RastChord 8 \arrowDown \RastChord 8 \arrowUp
      \fine
    }
    \section \break \themeLabel "B"
    % measure 5
    g4-0\arrowDown g8-0\arrowUp g4-0\arrowDown g8-0\arrowDown g8-0\arrowUp
    % measure 6
    a4-0-5\arrowDown g8-0\arrowDown a8-0-5\arrowDown bfc8-1\arrowUp \afterGrace c8-1\arrowDown (d16-3) bfc8-1\arrowUp
    % measure 7
    \acciaccatura d16-3 c4-1\arrowDown \glissando \afterGrace a8-0\arrowUp (c16-3) \afterGrace a4-0\arrowDown (bfc16-1) g4-0\arrowDown
    \break
    % measure 8
    g8-0\arrowDown g4-0\arrowDown \afterGrace c4-1\arrowDown\vibrato (d16-3) \afterGrace c8-1\arrowDown (d16-3) bfc8-1\arrowUp
    % measure 9
    \afterGrace bfc8-1\arrowDown (c16-\tweak extra-offset #'(0. . 1.5)-3) a8-0\arrowUp \afterGrace bfc8-1\arrowDown (c16-3) \afterGrace a4-0\arrowDown (bfc16-1) \afterGrace a8-0\arrowDown (bfc16-\tweak extra-offset #'(0. . 1.2)-1) g8-0\arrowDown
    % measure 10
    \afterGrace bfc4-1\arrowDown\vibrato (c16-3) \afterGrace a8-0\arrowUp (bfc16-1) g4-0\arrowDown \hiddenGraceArrow \arrowSelpe \RastChord 8 \arrowDown \RastChord 8 \arrowUp
    \section \break \themeLabel "B'"
    % measure 11
    \RastChord 4 \arrowDown \RastChord 8 \arrowZeybek \RastChord 4 \arrowDown \hiddenGraceArrow \arrowSelpe \RastChord 8 \arrowDown \RastChord 8 \arrowUp
    % measure 12
    \ADAChord 4 \arrowDown \hiddenGraceArrow \arrowZeybekB g8-0\arrowUp \ADAChord 8 \arrowDown bfc8-1\arrowUp \afterGrace c8-1\arrowDown (d16-3) bfc8-1\arrowUp
    % measure 13
    \acciaccatura d16-3 c4-1\arrowDown \glissando \hiddenGraceArrow \arrowZeybekB a8-0\arrowUp \ADAChord 4 \arrowDown \acciaccaturaNote bfc16-1\arrowSelpe \RastChord 8 \arrowDown \RastChord 8 \arrowUp
    \break
    % measure 14
    \RastChord 4 \arrowDown \RastChord 8 \arrowZeybek c4-1\arrowDown \acciaccaturaNote d16-3\arrowSelpe \afterGrace c8-1\arrowDown (d16-3) bfc8-1\arrowUp
    % measure 15
    bfc4-1\arrowDown \acciaccaturaNote a16-0\arrowZeybekB bfc8-1\arrowUp \ADAChord 4 \arrowDown \acciaccaturaNote bfc16-1\arrowSelpe \afterGrace <a\arrowDown \single \greyNote d, \single \greyNote  a'>8-5 (bfc16-\tweak extra-offset #'(0. . 1.)-1) g8-0\arrowDown
    % measure 16
    bfc4-1\arrowDown \hiddenGraceArrow \arrowZeybekB a8-0\arrowUp \RastChord 4 \arrowDown \hiddenGraceArrow \arrowSelpe \RastChord 8 \arrowDown \RastChord 8 \arrowUp
    \section \break \themeLabel "Γ"
    \repeat volta 2 {
      % measure 17
      \afterGrace c8-1\arrowDown (d16-3) \afterGrace c8-1\arrowUp (d16-3) bfc8-5\arrowDown a4-0\arrowDown \afterGrace c8-1\arrowDown (d16-3) \afterGrace c8-1\arrowUp (d16-3)
      % measure 18
      bfc8-1\arrowDown (a8-0) bfc8-1\arrowUp a4-0\arrowDown \acciaccaturaNote bfc16-1 \afterGrace a8-0\arrowDown (bfc16-\tweak extra-offset #'(0. . 1.)-1) g8-0\arrowDown
      \alternative {
        \volta 1 {
          % measure 19a
          g4.-0\arrowDown bfc16-1\arrowDown (c16-3 bfc16-1) a16-0\arrowUp bfc8-1\arrowDown g8-0\arrowDown
        }
        \volta 2 {
          % measure 19b
          \afterGrace bfc4-1\arrowDown\vibrato (c16-3) \afterGrace a8-0\arrowUp (bfc16-1) g4-0\arrowDown \hiddenGraceArrow \arrowSelpe \RastChord 8 \arrowDown \RastChord 8 \arrowUp
        }
      }
    }
    \section \break \themeLabel "Γ'"
    \repeat volta 2 {
      % measure 20
      \afterGrace c8-1\arrowDown (d16-3) \afterGrace c8-1\arrowUp (d16-3) \afterGrace bfc8-5\arrowDown (g16-0) \ADAChord 4 \arrowDown \hiddenGraceArrow \arrowSelpe  \afterGrace c8-1\arrowDown (d16-3) \afterGrace c8-1\arrowUp (d16-3)
      % measure 21
      bfc4-1\arrowDown \acciaccaturaNote a16-0\arrowZeybekB bfc8-1\arrowUp \ADAChord 4 \arrowDown \acciaccaturaNote bfc16-1\arrowSelpe \afterGrace <a\arrowDown \single \greyNote d, \single \greyNote  a'>8-5 (bfc16-\tweak extra-offset #'(0. . 1.)-1) g8-0\arrowDown
      \alternative {
        \volta 1 {
          % measure 25
          \RastChord 4 \arrowDown \hiddenGraceArrow \arrowZeybekB \RastChord 8 \arrowUp
          bfc4-1\arrowDown \acciaccatura {c32-3 \once \override Script.font-size = #0 bfc32-1\arrowSelpe a32-0} bfc8-1\arrowDown g8-0\arrowDown
        }
        \volta 2 {
          bfc4-1\arrowDown \hiddenGraceArrow \arrowZeybekB \afterGrace a8-0\arrowUp (bfc16-1)
          \RastChord 4 \arrowDown \hiddenGraceArrow \arrowSelpe \RastChord 8 \arrowDown \RastChord 8 \arrowUp
          \FBarline
        }
      }
    }
  }
}

% melodyB = \relative c'' {
%   \setZeybekTime
%   \section \break \themeLabel "B"
%   g'2 fb4 efb d c bfc afb g
% }

pieceOrig = {
  \keyA
  \melodyA
  % \setHicazkarKey
  % \melodyB
}

pieceTrans = {
  \keyB
  \transpose g c \melodyA
  % \setHicazkarBKey
  % \transpose g c \melodyB
}

verseOne = \lyricmode {
  \new Lyrics {
    \set associatedVoice = "one"
    \repeat unfold 33 {\skip 1}
    \override StanzaNumber.font-series = #'medium
    \set stanza = "1."
    Σαν α -- πό μά -- ρι σα -- αν α _ _ _ -- πό __ _ _ _
    σαν α -- πό -- ψι _ τέ _ _ -- νέ -- τοιαν _ ώ _ -- ρά
    \repeat unfold 33 {\skip 1}
    \repeat volta 2 {
      <<
        {σαν α _ -- πό -- ψι _ τέ _ -- νέ -- τοιαν _}
        \new Lyrics {
          \set associatedVoice = "one"
          χό -- ρευ _ -- αν οι _ πα _ -- α -- ντρε _ --
        }
      >>
      \alternative {
        \volta 1 {
          ώ -- ρα _ _ _
        }
        \volta 2 {
          μέ _ νες
        }
      }
    }
  }
}

extraVerses = \markup {
  \abs-fontsize #10
  \fill-line {
    \hspace #1
    \column {
      \line { \bold "1."
        \column {
          "Σαν από [μαρί σαν από]"
          "σαν απόψι τέτοιαν ώρα"
          "Σαν απόψι τέτοιαν ώρα"
          "χόρευαν οι παντρεμένες"
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "2."
        \column {
          "Χόρευαν [...] οι παντρεμένες *1+2"
          "χήρες κι αρραβωνιασμένες."
        }
      }
      \combine \null \vspace #0.1
    }
    \hspace #1
    \column {
      \line { \bold "3."
        \column {
          "Χόρευε [...] και η Γερακίνα *1+2"
          "στολισμένη αρματωμένη."
        }
      }
      \combine \null \vspace #0.1
      \line { \bold "4."
        \column {
          "Στολισμέ[...]νη αρματωμένη *1+2"
          "σαν την Παναγιά γραμμένη."
        }
      }
      \combine \null \vspace #0.1
    }
    \hspace #1
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
%   paper-height = 287\mm
%   left-margin = 1\cm
%   right-margin = 1\cm
%   indent = #0
% }

\include "render_data_01.ly"
