# vim:set filetype=perl sw=4 et:

#########################

use Test::More tests => 23;
use Test::Differences;
use Carp;

BEGIN {use_ok 'Lingua::Klingon::Segment', 'spell'; }

eq_or_diff [ spell 'monghom'  ],
           [ qw(m o n gh o m) ],
           'monghom';

eq_or_diff [ spell 'mongHom'  ],
           [ qw(m o ng H o m) ],
           'mongHom';

eq_or_diff [ spell 'vavoy' ],
           [ qw(v a v o y) ],
           'vavoy';

eq_or_diff [ spell "tu'lu'"  ],
           [ qw(t u ' l u ') ],
           "tu'lu'";

eq_or_diff [ spell "yIghuS" ],
           [ qw(y I gh u S) ],
           "yIghuS";

eq_or_diff [ spell "pa''a'"  ],
           [ qw(p a ' ' a ') ],
           "pa''a'";

eq_or_diff [ spell "cha'a'" ],
           [ qw(ch a ' a ') ],
           "cha'a'";

eq_or_diff [ spell "cha''a'"  ],
           [ qw(ch a ' ' a ') ],
           "cha''a'";

eq_or_diff [ spell 'cha' ],
           [ qw(ch a)    ],
           "cha";

eq_or_diff [ spell "rolIj" ],
           [ qw(r o l I j) ],
           "rolIj";

eq_or_diff [ spell "ro'lIj"  ],
           [ qw(r o ' l I j) ],
           "ro'lIj";

eq_or_diff [ spell "paw" ],
           [ qw(p a w)   ],
           "paw";

eq_or_diff [ spell "paw'" ],
           [ qw(p a w ')  ],
           "paw'";

eq_or_diff [ spell "pawbej"  ],
           [ qw(p a w b e j) ],
           "pawbej";

eq_or_diff [ spell "paw'bej"   ],
           [ qw(p a w ' b e j) ],
           "paw'bej";

eq_or_diff [ spell "Suy" ],
           [ qw(S u y)   ],
           "Suy";

eq_or_diff [ spell "Suy'" ],
           [ qw(S u y ')  ],
           "Suy'";

eq_or_diff [ spell "Suyvetlh"  ],
           [ qw(S u y v e tlh) ],
           "Suyvetlh";

eq_or_diff [ spell "Suy'vetlh"   ],
           [ qw(S u y ' v e tlh) ],
           "Suy'vetlh";

eq_or_diff [ spell "ghargh" ],
           [ qw(gh a r gh)  ],
           "ghargh";

eq_or_diff [ spell "gharghmey"   ],
           [ qw(gh a r gh m e y) ],
           "gharghmey";

eq_or_diff [ spell "ghargho" ],
           [ qw(gh a r gh o) ],
           "ghargho";
