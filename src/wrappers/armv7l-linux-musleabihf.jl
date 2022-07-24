# Autogenerated wrapper script for Elfutils_jll for armv7l-linux-musleabihf
export eu_addr2line, eu_ar, eu_elfclassify, eu_elfcmp, eu_elfcompress, eu_elflint, eu_findtextrel, eu_make_debug_archive, eu_nm, eu_objdump, eu_ranlib, eu_readelf, eu_size, eu_stack, eu_strings, eu_strip, eu_unstrip, libasm, libdw, libelf

using Zlib_jll
using Bzip2_jll
using XZ_jll
using argp_standalone_jll
using fts_jll
using obstack_jll
JLLWrappers.@generate_wrapper_header("Elfutils")
JLLWrappers.@declare_library_product(libasm, "libasm.so.1")
JLLWrappers.@declare_library_product(libdw, "libdw.so.1")
JLLWrappers.@declare_library_product(libelf, "libelf.so.1")
JLLWrappers.@declare_executable_product(eu_addr2line)
JLLWrappers.@declare_executable_product(eu_ar)
JLLWrappers.@declare_executable_product(eu_elfclassify)
JLLWrappers.@declare_executable_product(eu_elfcmp)
JLLWrappers.@declare_executable_product(eu_elfcompress)
JLLWrappers.@declare_executable_product(eu_elflint)
JLLWrappers.@declare_executable_product(eu_findtextrel)
JLLWrappers.@declare_executable_product(eu_make_debug_archive)
JLLWrappers.@declare_executable_product(eu_nm)
JLLWrappers.@declare_executable_product(eu_objdump)
JLLWrappers.@declare_executable_product(eu_ranlib)
JLLWrappers.@declare_executable_product(eu_readelf)
JLLWrappers.@declare_executable_product(eu_size)
JLLWrappers.@declare_executable_product(eu_stack)
JLLWrappers.@declare_executable_product(eu_strings)
JLLWrappers.@declare_executable_product(eu_strip)
JLLWrappers.@declare_executable_product(eu_unstrip)
function __init__()
    JLLWrappers.@generate_init_header(Zlib_jll, Bzip2_jll, XZ_jll, argp_standalone_jll, fts_jll, obstack_jll)
    JLLWrappers.@init_library_product(
        libasm,
        "lib/libasm.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libdw,
        "lib/libdw.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libelf,
        "lib/libelf.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        eu_addr2line,
        "bin/eu-addr2line",
    )

    JLLWrappers.@init_executable_product(
        eu_ar,
        "bin/eu-ar",
    )

    JLLWrappers.@init_executable_product(
        eu_elfclassify,
        "bin/eu-elfclassify",
    )

    JLLWrappers.@init_executable_product(
        eu_elfcmp,
        "bin/eu-elfcmp",
    )

    JLLWrappers.@init_executable_product(
        eu_elfcompress,
        "bin/eu-elfcompress",
    )

    JLLWrappers.@init_executable_product(
        eu_elflint,
        "bin/eu-elflint",
    )

    JLLWrappers.@init_executable_product(
        eu_findtextrel,
        "bin/eu-findtextrel",
    )

    JLLWrappers.@init_executable_product(
        eu_make_debug_archive,
        "bin/eu-make-debug-archive",
    )

    JLLWrappers.@init_executable_product(
        eu_nm,
        "bin/eu-nm",
    )

    JLLWrappers.@init_executable_product(
        eu_objdump,
        "bin/eu-objdump",
    )

    JLLWrappers.@init_executable_product(
        eu_ranlib,
        "bin/eu-ranlib",
    )

    JLLWrappers.@init_executable_product(
        eu_readelf,
        "bin/eu-readelf",
    )

    JLLWrappers.@init_executable_product(
        eu_size,
        "bin/eu-size",
    )

    JLLWrappers.@init_executable_product(
        eu_stack,
        "bin/eu-stack",
    )

    JLLWrappers.@init_executable_product(
        eu_strings,
        "bin/eu-strings",
    )

    JLLWrappers.@init_executable_product(
        eu_strip,
        "bin/eu-strip",
    )

    JLLWrappers.@init_executable_product(
        eu_unstrip,
        "bin/eu-unstrip",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
