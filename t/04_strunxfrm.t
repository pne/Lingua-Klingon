# vim:set filetype=perl sw=4 et:

#########################

use Test::More tests => 29;
use Carp;

BEGIN {use_ok 'Lingua::Klingon::Collate', 'strunxfrm'; }

# Test individual characters
is(strunxfrm('a'), 'a',   'a');
is(strunxfrm('b'), 'b',   'b');
is(strunxfrm('c'), 'ch',  'c');
is(strunxfrm('d'), 'D',   'd');
is(strunxfrm('e'), 'e',   'e');
is(strunxfrm('f'), 'gh',  'f');
is(strunxfrm('g'), 'H',   'g');
is(strunxfrm('h'), 'I',   'h');
is(strunxfrm('i'), 'j',   'i');
is(strunxfrm('j'), 'l',   'j');
is(strunxfrm('k'), 'm',   'k');
is(strunxfrm('l'), 'n',   'l');
is(strunxfrm('m'), 'ng',  'm');
is(strunxfrm('n'), 'o',   'n');
is(strunxfrm('o'), 'p',   'o');
is(strunxfrm('p'), 'q',   'p');
is(strunxfrm('q'), 'Q',   'q');
is(strunxfrm('r'), 'r',   'r');
is(strunxfrm('s'), 'S',   's');
is(strunxfrm('t'), 't',   't');
is(strunxfrm('u'), 'tlh', 'u');
is(strunxfrm('v'), 'u',   'v');
is(strunxfrm('w'), 'v',   'w');
is(strunxfrm('x'), 'w',   'x');
is(strunxfrm('y'), 'y',   'y');
is(strunxfrm('z'), "'",   'z');

# And a couple of words
is(strunxfrm('knlfnk'), 'monghom', 'monghom');
is(strunxfrm('knmgnk'), 'mongHom', 'mongHom');
