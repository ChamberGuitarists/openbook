\include "src/include/common.lyi"
\header {
	title="A Foggy Day"
	composer="George Gershwin"
	style="Jazz"
	piece="Medium Swing"
	remark="copied from the real book"
	poet="Ira Gershwin"
	copyright="1937, Gershwin Publishing Corporation"
}

harmony=\chords {
	\mark "A"
	f1:maj7 | a2:m7.5- d2:7.9- | g1:m7 | c1:7 | \break
	f1:6 | d1:m7.5- | g1:7 | g2:m7 c2:7 | \break
	f1:maj7 | c2:m7 f2:7 | bes1:6 | bes:m6 | \break
	f1:maj7 | a2:m7 d2:7 | g1:7 | g2:m7 c2:7 \bar "||" \break
	\mark "B"
	f1:maj7 | aes:m7 | g1:m7 | c1:7 | \break
	f1:6 | d1:m7.5- | g1:7 | g2:m7 c2:7 | \break
	c1:m7 | f1:7 | bes1:6 | ees1:7 | \break
	f2:6 g2:m7 | a2:m7 bes2:m6 | a2:m7 d2:7 | g2:m7 c2:7 | \break
	f1:6 | g2:m7 c2:7 \bar "|."
}

tune={
	\key f \major
	\time 4/4
	r4 c'4 c'4 c'4 | ees'2. ees'4 | d'4 d'2. | a'1 |
	r4 f'4 f'4 f'4 | aes'2. aes'4 | g'2. g'4 | d''1 |
	r4 e''4 e''4 e''4 | c''4 c''2. | a'2. a'4 | f'1 |
	r4 a'4 a'4 a'4 | c''4 c''2 c''4 | a'2. a'4 | d'1 |
	
	r4 c'4 c'4 c'4 | ees'2. ees'4 | d'2. d'4 | a'1 |
	r4 f'4 f'4 f'4 | aes'2. aes'4 | g'2. g'4 | d''1 |
	f''2 f''4 f''4 | d''2. d''4 | c''2 c''2 | a'2 a'4 bes'4 |
	c''4 f'4 g'4 bes'4 | a'4 f'4 g'4 bes'4 | a'2 f''2 | f'2 g'2 |
	f'1 ~ | f'2. r4 |

}

\include "src/include/harmony_and_tune.lyi"
