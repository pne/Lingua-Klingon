# vim:set filetype=perl sw=4 et:

#########################

use Test::More tests => 9;
use Carp;

BEGIN {use_ok 'Lingua::Klingon::Collate', 'strcoll'; }

cmp_ok(strcoll('ngan', 'nob' ), '>',  0, "'ngan' gt 'nob'" );
cmp_ok(strcoll('nob',  'ngan'), '<',  0, "'nob'  lt 'ngan'");
cmp_ok(strcoll('ngan', 'ngan'), '==', 0, "'ngan' eq 'ngan'");
cmp_ok(strcoll('nob',  'nob' ), '==', 0, "'nob'  eq 'nob'" );

cmp_ok(strcoll('mongHom', 'monghom'), '>',  0, "'mongHom' gt 'monghom'");
cmp_ok(strcoll('monghom', 'mongHom'), '<',  0, "'monghom' lt 'mongHom'");
cmp_ok(strcoll('mongHom', 'mongHom'), '==', 0, "'mongHom' eq 'mongHom'");
cmp_ok(strcoll('monghom', 'monghom'), '==', 0, "'monghom' eq 'monghom'");
