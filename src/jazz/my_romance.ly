\include "src/include/common.lyi"
\header {
	title="My Romance"
	subtitle="From 'Jumbo'"
	composer="Richard Rodgers"
	poet="Lorenz Hart"
	style="Jazz"
	piece="Modeartely Slow"
	copyright="1935, T.B. Harms Company. Copyright Renewed, (c/o The Welk Music Group, Santa Monica, CA 90401)"

	completion="5"
	uuid="6a5d2730-c7dd-11df-b3d0-0019d11e5a41"
}

%{
	TODO:
%}

%% this set of chords is taken from the fake book
myChords=\chordmode {
	\startChords

	\startSong

	\partial 4 r4

	\mark "A"
	\startPart
	c2:maj7 d2:m7 | e2:m7 ees2:dim7 | d2:m7 g2:7 | c2:maj7 bes2:7.13 | \myEndLine
	a2:m a2:m7+ | a2:m7 a2:7 | d2:m7 g2:7 | c2:maj7 c2:7 | \myEndLine

	f2:maj7 fis2:dim7 | c2:maj7 c2:7 | f2:maj7 fis2:dim7 | c1:maj7 | \myEndLine
	fis2:m7 f2:7.5- | e2:m7 ees:7 | a2:m7.9 d2:7 | d2:m7 g2:7 | \myEndLine
	\endPart

	\mark "B"
	\startPart
	c2:maj7 d2:m7 | e2:m7 ees2:dim7 | d2:m7 g2:7 | c2:maj7 bes2:7.13 | \myEndLine
	a2:m a2:m7+ | a2:m7 a2:7 | d2:m7 g2:7 | c2:maj7 c2:7 | \myEndLine

	f2:maj7 f2:maj7/e | d2:m7 d2:m7/c | b2:m7 bes2:7.9.11+ | a2:m7 aes2:7.9 | \myEndLine
	c2:maj7/g a2:m7 | d2:m7 d4:m7/g g4:7 | c1:6 | c1:6 | \myEndLine
	\endPart

	\endSong

	\endChords
}
myVoice=\relative c' {
	\time 4/4
	\key c \major
	%% http://veltzer.net/blog/blog/2010/08/14/musical-tempo-table/
	\tempo "Moderato" 4 = 100

	\partial 4 e8 f |

	%% A part
	g2. e8 f | g4 a b c | c2. b8 a | g2. c,8 d |
	e2. c8 d | e4 f g a | a2. g8 f | e2. g4 |

	c,2. c'4 | g2. g4 | c,2. c'4 | g2. c4 |
	b2. a4 | g2. c4 | b2. a4 | g2. e8 f |

	%% B part
	g2. e8 f | g4 a b c | c2. b8 a | g2. c,8 d |
	e2. c8 d | e4 f g a | a2. g8 f | e2. f8 g |

	a2. f8 g | a4 b c d | e e e e | c2. c8 d |
	e2. c8 d | e4 c4 a4 f4 | c'1~ | c2. r4 |

}
myLyrics=\lyricmode {
	My Ro -- mance does -- n't have to have a moon in the sky,
	My Ro -- mance does -- n't need a blue la -- goon stand -- ing by;
	No month of May, No twin -- kling stars,
	No hide a -- way, No soft gui -- tars.

	My Ro -- mance does -- n't need a cas -- tle ris -- ing in Spain,
	Nor a dance to a con -- stant -- ly sur -- pris -- ing re -- frain.
	Wide a -- wake I can make my most fan -- tas -- tic dreams come true;
	My Ro -- mance does -- n't need a thing but you.
}
%% score for printing
\score {
	<<
		\new ChordNames="mychords" \myChords
		\new Voice="myvoice" \myVoice
		\new Lyrics \lyricsto "myvoice" \myLyrics
	>>
	\layout {
	}
}
%% score for midi
\score {
	\unfoldRepeats
	<<
		\new ChordNames="mychords" \myChords
		\new Voice="myvoice" \myVoice
	>>
	\midi {
	}
}
