package Acme::CPANModules::UnixCommandWrappers;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => "List of various CLIs that wrap existing Unix commands",
    description => <<'MARKDOWN',

These CLI's usually are meant to be called as the Unix commands they wrap, e.g.:

    alias ssh=sshwrap-hostcolor

But they perform additional stuffs.

If you know of others, please drop me a message.

Keywords: CLI, wrapper, Unix utilities

MARKDOWN
    entries => [
        # convert (ImageMagick)
        {
            summary => 'Simple wrappers for ImageMagick\'s convert to process multiple filenames and automatically set output filenames',
            module => 'App::ImageMagickUtils',
            script => ['convert-image-to', 'convert-image-to-pdf'],
            'x.command' => 'convert',
        },

        # cp, mv (ImageMagick)
        {
            summary => 'Wrappers for cp & mv to adjust relative symlinks',
            module => 'App::CpMvUtils',
            script => ['cp-and-adjust-symlinks', 'mv-and-adjust-symlinks'],
            'x.command' => ['cp', 'mv'],
        },

        # diff
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
        {
            summary => 'Diffs two PDF files by first converting to plaintext',
            module => 'App::DiffPDFText',
            script => ['diff-pdf-text'],
            'x.command' => 'diff',
        },
        {
            summary => 'Diffs two office spreadsheets by first converting them to directories of CSV files',
            module => 'App::DiffXlsText',
            script => ['diff-xls-text'],
            'x.command' => 'diff',
        },
        {
            summary => 'Provides sdif (diff side-by-side with nice color theme), cdif (highlight words with nice color scheme), and watchdiff (watch command and diff output)',
            module => 'App::sdif',
            script => ['sdif', 'cdif', 'watchdiff'],
            'x.command' => ['diff', 'watch'],
        },

        # git
        {
            summary => 'Wraps git to do additional stuff, e.g. set user+email automatically',
            module => 'App::gitwrap',
            script => 'gitwrap',
            'x.command' => 'git',
        },

        # grep
        {
            summary => 'Print lines that match terms (each term need not be in particular order, support negative search)',
            module => 'App::GrepUtils',
            script => ['grep-terms'],
            'x.command' => ['grep'],
        },

        # man
        {
            summary => 'Wraps man to search for (and tab-complete) Perl module documentation',
            module => 'App::manwrap::pm',
            script => 'manwrap-pm',
            'x.command' => 'man',
        },

        # rsync
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

        # ssh
        {
            summary => 'Wraps ssh to remember the background terminal color of each user+host you went to',
            module => 'App::sshwrap::hostcolor',
            script => 'sshwrap-hostcolor',
            'x.command' => 'ssh',
        },

    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION


=head1 prepend:SEE ALSO

Other variants for C<grep>: L<Acme::CPANModules::GrepVariants>
