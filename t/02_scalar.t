# vim:set filetype=perl sw=4 et:

#########################

use Test::More tests => (9*9*2 + 1);
use Carp;

BEGIN {use_ok 'Lingua::Klingon::Recode', 'recode'; }

my @encodings = qw(uhmal UHMAL
                   tlhIngan tlhingan TLHINGAN
                   XIFAN XIFANZ xifan xifanz);

# test a simple word
my %word = (
    'uhmal' => 'uhmal',
    'UHMAL' => 'UHMAL',
    'tlhIngan' => 'tlhIngan',
    'tlhingan' => 'tlhingan',
    'TLHINGAN' => 'TLHINGAN',
    'XIFAN' => 'XIFAN',
    'XIFANZ' => 'XIFAN',
    'xifan' => 'xifan',
    'xifanz' => 'xifan',
);

for $from (@encodings) {
  for $to (@encodings) {
    # diag "Testing $from -> $to";
    is(recode($from, $to, $word{$from}), $word{$to}, "[$from] '$word{$from}' => [$to] '$word{$to}'");
  }
}

# test a phrase with embedded whitespace and punctuation
# (but no 'q' or 'Q')
my %phrase = (
    'uhmal' => 'uhmal gnj daiauzaz? ghsjag, uhmal gnj whiaujagcvz',
    'UHMAL' => 'UHMAL GNJ DAIAUZAZ? GHSJAG, UHMAL GNJ WHIAUJAGCVZ',
    'tlhIngan' => "tlhIngan Hol Dajatlh'a'? HISlaH, tlhIngan Hol vIjatlhlaHchu'",
    'tlhingan' => "tlhingan hol dajatlh'a'? hislah, tlhingan hol vijatlhlahchu'",
    'TLHINGAN' => "TLHINGAN HOL DAJATLH'A'? HISLAH, TLHINGAN HOL VIJATLHLAHCHU'",
    'XIFAN' => "XIFAN HOL DAJAX'A'? HISLAH, XIFAN HOL VIJAXLAHCU'",
    'XIFANZ' => 'XIFAN HOL DAJAXZAZ? HISLAH, XIFAN HOL VIJAXLAHCUZ',
    'xifan' => "xifan hol dajax'a'? hislah, xifan hol vijaxlahcu'",
    'xifanz' => 'xifan hol dajaxzaz? hislah, xifan hol vijaxlahcuz',
);

for $from (@encodings) {
  for $to (@encodings) {
    # diag "Testing $from -> $to";
    is(recode($from, $to, $word{$from}), $word{$to}, "[$from] '$word{$from}' => [$to] '$word{$to}'");
  }
}

