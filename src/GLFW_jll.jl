# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule GLFW_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("GLFW")
JLLWrappers.@generate_main_file("GLFW", UUID("0656b61e-2033-5cc2-a64a-77c0f6c09b89"))
end  # module GLFW_jll
