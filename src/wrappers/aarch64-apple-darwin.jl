# Autogenerated wrapper script for GLFW_jll for aarch64-apple-darwin
export libglfw

JLLWrappers.@generate_wrapper_header("GLFW")
JLLWrappers.@declare_library_product(libglfw, "@rpath/libglfw.3.dylib")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libglfw,
        "lib/libglfw.3.3.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
