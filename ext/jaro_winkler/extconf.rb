# frozen_string_literal: true

require 'mkmf'
$CFLAGS << ' -std=c99 '
$CFLAGS << ' -Werror=incompatible-pointer-types '
create_makefile('jaro_winkler/jaro_winkler_ext')