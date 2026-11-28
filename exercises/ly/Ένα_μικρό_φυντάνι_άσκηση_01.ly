\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Ένα μικρό φυντάνι - άσκηση 01"
pieceSubtitle = "Προποντίδα, Νικομήδεια"
pieceFilename = "Ένα_μικρό_φυντάνι_άσκηση_01"
source = ""
keyA = \setRastKey
keyB = \setRastBKey


#(define mydrums '((tambourine default #f 0)))

% \new DrumStaff \with { instrumentName = #"Ρυθμός" }

% bar numbers -1
barnumbers = 3

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
    % measure 1
    \ADAChord 8 \arrowDown bfc16-1\arrowDown bfc16-1\arrowUp c8-1\arrowDown d8-3\arrowUp
    \repeat unfold \barnumbers {s2}
}

melodyA = \relative c'' {
    \time 2/4
    % \themeLabel "Α"
    \repeat volta 2 {
      % measure 1
      \ADAChord 8 \noArrow bfc8-1 c8-1 d8-3
      % measure 2
      bfc4.-1 g8-0\arrowDown
      % measure 3
      \ADAChord 8 \noArrow a8-0 \RastChord 8 \noArrow \FbCbChord 8 \noArrow
      % measure 4
      \RastChord 4 \noArrow \RastChord 4 \noArrow
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