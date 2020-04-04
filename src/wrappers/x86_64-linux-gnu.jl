# Autogenerated wrapper script for Elfutils_jll for x86_64-linux-gnu
export libdw, libelf, libasm

using Zlib_jll
using Bzip2_jll
using XZ_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libdw`
const libdw_splitpath = ["lib", "libdw.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libdw_path = ""

# libdw-specific global declaration
# This will be filled out by __init__()
libdw_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libdw = "libdw.so.1"


# Relative path to `libelf`
const libelf_splitpath = ["lib", "libelf.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libelf_path = ""

# libelf-specific global declaration
# This will be filled out by __init__()
libelf_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libelf = "libelf.so.1"


# Relative path to `libasm`
const libasm_splitpath = ["lib", "libasm.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libasm_path = ""

# libasm-specific global declaration
# This will be filled out by __init__()
libasm_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libasm = "libasm.so.1"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Elfutils")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Zlib_jll.PATH_list, Bzip2_jll.PATH_list, XZ_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Zlib_jll.LIBPATH_list, Bzip2_jll.LIBPATH_list, XZ_jll.LIBPATH_list,))

    global libdw_path = normpath(joinpath(artifact_dir, libdw_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libdw_handle = dlopen(libdw_path)
    push!(LIBPATH_list, dirname(libdw_path))

    global libelf_path = normpath(joinpath(artifact_dir, libelf_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libelf_handle = dlopen(libelf_path)
    push!(LIBPATH_list, dirname(libelf_path))

    global libasm_path = normpath(joinpath(artifact_dir, libasm_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libasm_handle = dlopen(libasm_path)
    push!(LIBPATH_list, dirname(libasm_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

