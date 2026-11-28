\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Κάτω στο γιαλό (α) - άσκηση 01"
pieceSubtitle = "Αιγαίο (Χίος)"
pieceFilename = "Κάτω_στο_γιαλό_α_άσκηση_01"
source = ""
keyA = \setRastKey
keyB = \setRastBKey


#(define mydrums '((tambourine default #f 0)))

% \new DrumStaff \with { instrumentName = #"Ρυθμός" }

% bar numbers -1
barnumbers = 7

rhythm = \drummode {
  \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
  \override Staff.StaffSymbol.line-positions = #'( 0 )
  \override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
  \voiceOne
  \time 2/4
  tamb8\arrowDown 16\arrowDown 16\arrowUp 8\arrowDown 8\arrowUp
  \stopStaff
  \omit Stem
  \omit Flag
  \omit Beam
  \override NoteHead.transparent = ##t
  \repeat unfold \barnumbers {
    tamb8 16 16 8 8
  }
}

answerA = \relative c'' {
    \time 2/4
    bfc8-1\arrowDown c16-1\arrowDown 16-1\arrowUp d8-1\arrowDown e8-3\arrowUp
    \repeat unfold \barnumbers {s2}
}

melodyA = \relative c'' {
    \time 2/4
    \themeLabel "Α"
    \repeat volta 2 {
      % measure 1
      bfc8-1 c8-1 d8-1 e8-3
      % measure 2
      d4.-1 d8-1
      % measure 3
      e8-3 d-1 c-1 bfc-1
      % measure 4
      d4-3 bfc4-1
    }
    \section \break \themeLabel "Β"
    \repeat volta 2 {
      % measure 1
      d8-3 c16-1 bfc16-1 \ADAChord 8 \noArrow \ADAChord 8 \noArrow
      % measure 2
      \RastChord 8 \noArrow a8-0 bfc8-1 c8-1
      % measure 3
      d8-3 c16-1 bfc16-1 \ADAChord 8 \noArrow \ADAChord 8 \noArrow
      % measure 4
      \RastChord 8 \noArrow a8-0 bfc4-1
    }
}

melodyOrig = {
  \keyA
  \melodyA
  % \setHicazkarKey
  % \melodyB
}

melodyTrans = {
  \keyB
  \transpose g c \melodyA
  % \setHicazkarBKey
  % \transpose g c \melodyB
}

answerOrig = {
  \keyA
  \answerA
  % \setHicazkarKey
  % \melodyB
}

answerTrans = {
  \keyB
  \transpose g c \answerA
  % \setHicazkarBKey
  % \transpose g c \melodyB
}


%%%%%%% pdf %%%%%%%
\paper {
  #(set-paper-size "a4")
  top-margin = 2\cm
  left-margin = 3\cm
  right-margin = 1\cm
  indent = #0
}

%%%%%%% svg %%%%%%%
% \paper {
%   paper-width = 210\mm
%   paper-height = 255\mm
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
  \bookOutputName \pieceFilename
  \bookpart {
    \score {
        \new StaffGroup = "exercise" <<
          \new Staff = "melody" \with { instrumentName = "Μελωδία" }
          \melodyOrig
          \new DrumStaff \with { instrumentName = #"Ρυθμός" }
          <<\new DrumVoice \rhythm>>
          \new Staff = "answer" \with { instrumentName = "Απάντηση" }
          \answerOrig
        >>
    }
  }
}

\book {
  \bookOutputName #(string-append pieceFilename "_inΝτο")
  \bookpart {
    \score {
        \new StaffGroup = "exercise" <<
          \new Staff = "melody" \with { instrumentName = "Μελωδία" }
          \melodyTrans
          \new DrumStaff \with { instrumentName = #"Ρυθμός" }
          <<\new DrumVoice \rhythm>>
          \new Staff = "answer" \with { instrumentName = "Απάντηση" }
          \answerTrans
        >>
    }
  }
}