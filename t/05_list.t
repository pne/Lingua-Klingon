# vim:set filetype=perl sw=4 et:

#########################

use Test::More tests => 5;
use Test::Differences;
use Carp;

BEGIN {use_ok 'Lingua::Klingon::Collate', ':all'; }

eq_or_diff [ strxfrm('monghom', 'mongHom') ],
           [ 'knlfnk', 'knmgnk'            ],
           "list output of strxfrm";

is(strxfrm('monghom', 'mongHom'), 'knlfnk', 'scalar output of strxfrm');

eq_or_diff [ strunxfrm('knlfnk', 'knmgnk') ],
           [ 'monghom', 'mongHom'          ],
           "list output of strunxfrm";

is(strunxfrm('knlfnk', 'knmgnk'), 'monghom', 'scalar output of strunxfrm');
