use Module::Build;

my $build = Module::Build->new(
    module_name     => 'WWW::Restaurant::Menu',
    dist_author     => 'Julian Mehnle <julian@mehnle.net>',
    license         => 'perl',
    requires        => {
        # Core requirements:
        perl                => '5.8'
    },
    recommends      => {
        # Filter module requirements:
        Encode              => 0,
        LWP                 => 0,
        HTML::HeadParser    => 0,
        HTML::TableExtract  => 0,
        HTML::TableExtract::Raw
                            => 0
    },
    create_makefile_pl
                    => 'passthrough',
    sign            => 1
);

$build->create_build_script();

# $Id: Build.PL,v 1.2 2004/04/12 16:02:51 julian Exp $
# vim:tw=79
