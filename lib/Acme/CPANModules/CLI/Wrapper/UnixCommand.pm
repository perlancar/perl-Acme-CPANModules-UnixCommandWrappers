package Acme::CPANModules::CLI::Wrapper::UnixCommand;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => "Various CLIs that wrap (popular) Unix commands",
    description => <<'_',

These CLI's usually are meant to be called as the Unix commands they wrap, e.g.:

    alias ssh=sshwrap-hostcolor

But they perform additional stuff.

If you know of others, please drop me a message.

_
    entries => [
        {
            summary => 'Wraps ssh to remember the background terminal color of each user+host you went to',
            module => 'App::sshwrap::hostcolor',
            script => 'sshwrap-hostcolor',
            'x.command' => 'ssh',
        },
        {
            summary => 'Wraps man to search for (and tab-complete) Perl module documentation',
            module => 'App::manwrap::pm',
            script => 'manwrap-pm',
            'x.command' => 'man',
        },
        {
            summary => 'Wraps git to do additional stuff, e.g. set user+email automatically',
            module => 'App::gitwrap',
            script => 'gitwrap',
            'x.command' => 'git',
        },
        {
            summary => 'Wraps rsync to add color to output, particularly highlighting deletion',
            module => 'App::rsynccolor',
            script => 'rsynccolor',
            'x.command' => 'rsync',
        },
        {
            summary => 'Wraps rsync to check that source is newer than target',
            module => 'App::rsync::new2old',
            script => 'rsync-new2old',
            'x.command' => 'rsync',
        },
        {
            summary => 'Wraps cpanm to use local CPAN mirror and let you specify script name to install instead of module name',
            module => 'App::lcpan',
            script => ['lcpanm', 'lcpanm-script'],
            'x.command' => 'cpanm',
        },
        {
            summary => 'Wraps (or filters output of) diff to add colors and highlight words',
            module => 'App::diffwc',
            script => ['diffwc', 'diffwc-filter-u'],
            'x.command' => 'diff',
        },
        {
            summary => 'Diffs two office word-processor documents by first converting them to plaintext',
            module => 'App::DiffDocText',
            script => ['diff-doc-text'],
            'x.command' => 'diff',
        },
    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION
