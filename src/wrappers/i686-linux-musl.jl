# Autogenerated wrapper script for Elfutils_jll for i686-linux-musl
export libasm, libdw, libelf

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

    JLLWrappers.@generate_init_footer()
end  # __init__()
