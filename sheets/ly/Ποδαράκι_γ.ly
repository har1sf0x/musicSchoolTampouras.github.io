\version "2.24.4"

\include "utilities_01.ly"

pieceName = "Ποδαράκι (γ)"
pieceSubtitle = "Θράκη"
pieceFilename = "Ποδαράκι_γ"
source = ""
keyA = \setUssakKey
keyB = \setUssakBKey

melodyA = \relative c'' {
  % \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  % \set Score.alternativeNumberingStyle = #'numbers-with-letters
  % \time 2/4
  \setZonaradikosTime
  \section \sectionLabel "Α"
  \repeat volta 2 {
    % measure 1
    e4.-3\arrowDown d4-1\arrowDown e8-3\arrowUp
    % measure 2
    d4.-1\arrowDown c8-3\arrowDown (bfc8-1) a8-0\arrowUp
    % measure 3
    \customDuoChord g d -0 4. \arrowDown d4.-3\arrowSelpe
    % measure 4
    d4.-3\arrowDown c4-1\arrowDown d8-1\arrowUp
    % measure 5
    e4.-3\arrowDown d4-1\arrowDown e8-3\arrowUp
    % measure 6
    d4.-1\arrowDown c8-3\arrowDown (bfc8-1) a8-0\arrowUp
    % measure 7
    g4.-0\arrowDown \AEAChord 4. \arrowSelpe
    % measure 8
    \AEAChord 4. \arrowDown \AEAChord 4. \arrowUp
  }
  \section \break \sectionLabel "B"
  % measure 9
  \customDuoChord g d -0 4. \arrowDown c8-3\arrowDown (bfc8-1) a8-0\arrowUp
  % measure 10
  \customDuoChord g d -0 4. \arrowDown c8-3\arrowDown (bfc8-1) a8-0\arrowUp
  % measure 11
  \customDuoChord g d -0 4. \arrowDown d4.-3\arrowSelpe
  % measure 12
  d4.-3\arrowDown d4.-3\arrowUp
  % measure 13
  \customDuoChord g d -0 4. \arrowDown c8-3\arrowDown (bfc8-1) a8-0\arrowUp
  % measure 14
  \customDuoChord g d -0 4. \arrowDown c8-3\arrowDown (bfc8-1) a8-0\arrowUp
  % measure 15
  \customDuoChord g d -0 4. \arrowDown \AEAChord 4. \arrowSelpe
  % measure 16
  \AEAChord 4. \arrowDown \AEAChord 4. \arrowUp
  \fine


  % \section 
  \override Score.NonMusicalPaperColumn.line-break-system-details = #'((extra-offset . (0 . 5)))
  \sectionLabel "Α" \set Score.currentBarNumber = #1
  \repeat volta 2 {
    % measure 1
    e'4.-3\arrowDown d4-1\arrowDown e8-3\arrowUp
    % measure 2
    d4.-1\arrowDown c8-1\arrowUp bfc8-5\arrowDown a8-0\arrowUp
    % measure 3
    \RastChord 4. \arrowDown d4.-3\arrowSelpe
    % measure 4
    d4.-3\arrowDown c4-1\arrowDown d8-1\arrowUp
    % measure 5
    e4.-3\arrowDown d4-1\arrowDown e8-3\arrowUp
    % measure 6
    d4.-1\arrowDown c8-1\arrowUp bfc8-5\arrowDown a8-0\arrowUp
    % measure 7
    \RastChord 4. \arrowDown \AEAChord 4. \arrowSelpe
    % measure 8
    \AEAChord 4. \arrowDown \AEAChord 4. \arrowUp
  }
  \section \break \sectionLabel "B"
  % measure 9
  \RastChord 4. \arrowDown c8-1\arrowUp bfc8-5\arrowDown a8-0\arrowUp
  % measure 10
  \RastChord 4. \arrowDown c8-1\arrowUp bfc8-5\arrowDown a8-0\arrowUp
  % measure 11
  \RastChord 4. \arrowDown d4.-3\arrowSelpe
  % measure 12
  d4.-3\arrowDown d4.-3\arrowUp
  % measure 13
  \RastChord 4. \arrowDown c8-1\arrowUp bfc8-5\arrowDown a8-0\arrowUp
  % measure 14
  \RastChord 4. \arrowDown c8-1\arrowUp bfc8-5\arrowDown a8-0\arrowUp
  % measure 15
  \RastChord 4. \arrowDown \AEAChord 4. \arrowSelpe
  % measure 16
  \AEAChord 4. \arrowDown \AEAChord 4. \arrowUp
  \fine
  
  % \section \break \sectionLabel "B" \set Score.currentBarNumber = #1

}

% melodyB = \relative c'' {
%   \setZeybekTime
%   \section \break \sectionLabel "B"
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
  % \new Lyrics {
  %   \set associatedVoice = "one"
  %   \repeat unfold 5 {\skip 1} %"1α."
  %   \override StanzaNumber.font-series = #'medium
  %   \set stanza = "1α."
  %   Χρι -- στού -- γεν _ -- να, Πρω -- τού -- γεν _ -- να πρώ -- τη -- γιορ _ -- τή _ του χρό _ _ -- νου, για
  % }
  % \set fontSize = #-2 
  % <<
  %   \new Lyrics {
  %     \set associatedVoice = "one"
  %     \set stanza = "1α."
  %     Χρι -- στού -- γεν _ -- να, Πρω -- τού -- γεν _ -- να πρώ -- τη -- γιορ _ -- τή _ του χρό _ _ -- νου, για
  %   }
  %   \new Lyrics {
  %     \set associatedVoice = "one"
  %     \set stanza = "1β."
  %     για 'βγά -- τε _ ιδέ -- στε μά -- θε _ -- τε ν'οπ' ο Χρι _ -- στός _ γεν -- νιέ _ _ -- ται. Γεν... πόρ -- τα
  %   }
  % >>
}

extraVerses = \markup {
  % \abs-fontsize #10
  % \fill-line {
  %   \hspace #1
  %   \column {
  %     \line { \bold "1."
  %       \column {
  %         "Σαν από [μαρί σαν από]"
  %         "σαν απόψι τέτοιαν ώρα"
  %         "Σαν απόψι τέτοιαν ώρα"
  %         "χόρευαν οι παντρεμένες"
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "2."
  %       \column {
  %         "Χόρευαν [...] οι παντρεμένες *1+2"
  %         "χήρες κι αρραβωνιασμένες."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %   }
  %   \hspace #1
  %   \column {
  %     \line { \bold "3."
  %       \column {
  %         "Χόρευε [...] και η Γερακίνα *1+2"
  %         "στολισμένη αρματωμένη."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %     \line { \bold "4."
  %       \column {
  %         "Στολισμέ[...]νη αρματωμένη *1+2"
  %         "σαν την Παναγιά γραμμένη."
  %       }
  %     }
  %     \combine \null \vspace #0.1
  %   }
  %   \hspace #1
  % }
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
%   paper-height = 170\mm
%   left-margin = 1\cm
%   right-margin = 1\cm
%   indent = #0
% }

\include "render_data_01.ly"
