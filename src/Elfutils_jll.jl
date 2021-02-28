# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Elfutils_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("Elfutils")
JLLWrappers.@generate_main_file("Elfutils", UUID("ab5a07f8-06af-567f-a878-e8bb879eba5a"))
end  # module Elfutils_jll
