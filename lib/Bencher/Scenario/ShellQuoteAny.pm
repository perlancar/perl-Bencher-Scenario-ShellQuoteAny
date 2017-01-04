package Bencher::Scenario::ShellQuoteAny;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark cross-platform shell quoting',
    participants => [
        {
            fcall_template=>'ShellQuote::Any::shell_quote(<cmd>)',
        },
        {
            fcall_template=>'PERLANCAR::ShellQuote::Any::shell_quote(@{<cmd>})',
        },
        {
            fcall_template=>'ShellQuote::Any::Tiny::shell_quote(<cmd>)',
        },
    ],
    datasets => [
        {name=>'empty0', args=>{cmd=>[]}},
        {name=>'empty1', args=>{cmd=>['']}},
        {name=>'cmd1', args=>{cmd=>['foo bar']}},
        {name=>'cmd5', args=>{cmd=>['foo', 'bar', 'baz', 'qux', 'quux']}},
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
