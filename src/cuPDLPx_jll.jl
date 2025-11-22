# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule cuPDLPx_jll
using Base
using Base: UUID
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("cuPDLPx")
JLLWrappers.@generate_main_file("cuPDLPx", UUID("bca5daad-f4d3-5101-ae12-8b63679c982c"))
end  # module cuPDLPx_jll
