# vim:set filetype=perl sw=4 et:

#########################

use Test::More tests => 29;
use Test::Differences;
use Carp;

BEGIN {use_ok 'Lingua::Klingon::Segment', 'syllabify'; }

eq_or_diff [ syllabify 'monghom' ],
           [ qw(mon ghom)        ],
           'monghom';

eq_or_diff [ syllabify 'mongHom' ],
           [ qw(mong Hom)        ],
           'mongHom';

eq_or_diff [ syllabify 'mongghom' ],
           [ qw(mong ghom)        ],
           'mongghom';

eq_or_diff [ syllabify 'vavoy' ],
           [ qw(va voy)        ],
           'vavoy';

eq_or_diff [ syllabify "tu'lu'" ],
           [ qw(tu' lu')        ],
           "tu'lu'";

eq_or_diff [ syllabify "yIghuS" ],
           [ qw(yI ghuS)        ],
           "yIghuS";

eq_or_diff [ syllabify "pa''a'" ],
           [ qw(pa' 'a')        ],
           "pa''a'";

eq_or_diff [ syllabify "cha'a'" ],
           [ qw(cha 'a')        ],
           "cha'a'";

eq_or_diff [ syllabify "cha''a'" ],
           [ qw(cha' 'a')        ],
           "cha''a'";

eq_or_diff [ syllabify 'cha' ],
           [ qw(cha)         ],
           "cha";

eq_or_diff [ syllabify "rolIj" ],
           [ qw(ro lIj)        ],
           "rolIj";

eq_or_diff [ syllabify "ro'lIj" ],
           [ qw(ro' lIj)        ],
           "ro'lIj";

eq_or_diff [ syllabify "paw" ],
           [ qw(paw)         ],
           "paw";

eq_or_diff [ syllabify "paw'" ],
           [ qw(paw')         ],
           "paw'";

eq_or_diff [ syllabify "pawbej" ],
           [ qw(paw bej)        ],
           "pawbej";

eq_or_diff [ syllabify "paw'bej" ],
           [ qw(paw' bej)        ],
           "paw'bej";

eq_or_diff [ syllabify "paw'a'" ],
           [ qw(paw 'a')        ],
           "paw'a'";

eq_or_diff [ syllabify "paw''a'" ],
           [ qw(paw' 'a')        ],
           "paw''a'";

eq_or_diff [ syllabify "Suy" ],
           [ qw(Suy)         ],
           "Suy";

eq_or_diff [ syllabify "Suy'" ],
           [ qw(Suy')         ],
           "Suy'";

eq_or_diff [ syllabify "Suyvetlh" ],
           [ qw(Suy vetlh)        ],
           "Suyvetlh";

eq_or_diff [ syllabify "Suy'vetlh" ],
           [ qw(Suy' vetlh)        ],
           "Suy'vetlh";

eq_or_diff [ syllabify "ghargh" ],
           [ qw(ghargh)         ],
           "ghargh";

eq_or_diff [ syllabify "gharghmey" ],
           [ qw(ghargh mey)        ],
           "gharghmey";

eq_or_diff [ syllabify "ghargho" ],
           [ qw(ghar gho)        ],
           "ghargho";

eq_or_diff [ syllabify "tlhIngan Hol Dajatlh'a'?" ],
           [ qw(tlhI ngan Hol Da jatlh 'a')       ],
           "tlhIngan Hol Dajatlh'a'?";

# Test a long word
eq_or_diff [ syllabify "QaghHommeyHeylIjmo'" ],
           [ qw(Qagh Hom mey Hey lIj mo')    ],
           "QaghHommeyHeylIjmo'";

# Test a long non-word
eq_or_diff [ syllabify "QaghHommeyHeylIjmoqqq" ],
           [                                   ],
           "QaghHommeyHeylIjmoqqq";
