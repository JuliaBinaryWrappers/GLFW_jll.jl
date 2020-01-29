# Autogenerated wrapper script for GLFW_jll for x86_64-linux-gnu
export libglfw

using Libglvnd_jll
using Xorg_libXcursor_jll
using Xorg_libXi_jll
using Xorg_libXinerama_jll
using Xorg_libXrandr_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libglfw`
const libglfw_splitpath = ["lib", "libglfw.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libglfw_path = ""

# libglfw-specific global declaration
# This will be filled out by __init__()
libglfw_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libglfw = "libglfw.so.3"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"GLFW")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Libglvnd_jll.PATH_list, Xorg_libXcursor_jll.PATH_list, Xorg_libXi_jll.PATH_list, Xorg_libXinerama_jll.PATH_list, Xorg_libXrandr_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Libglvnd_jll.LIBPATH_list, Xorg_libXcursor_jll.LIBPATH_list, Xorg_libXi_jll.LIBPATH_list, Xorg_libXinerama_jll.LIBPATH_list, Xorg_libXrandr_jll.LIBPATH_list,))

    global libglfw_path = normpath(joinpath(artifact_dir, libglfw_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libglfw_handle = dlopen(libglfw_path)
    push!(LIBPATH_list, dirname(libglfw_path))

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

