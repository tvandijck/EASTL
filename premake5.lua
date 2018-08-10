workspace "EASTL"
    configurations { "Debug", "Release" }

    filter { 'system:linux' }
        platforms { 'x86_64' }
        buildoptions
        {
            "-mcx16"
        }

    filter { 'system:windows' }
        platforms { 'x86', 'x86_64' }

    filter {}

    location ( _OPTIONS["to"] )
    exceptionhandling "Off"
    floatingpoint "Fast"
    rtti "Off"
    vectorextensions "SSE2"
    symbols "On"
    warnings "Extra"

    flags { "FatalWarnings", "MultiProcessorCompile" }

    filter { "configurations:Debug" }
        defines { "_DEBUG" }
        optimize "Off"

    filter { "configurations:Release" }
        defines { "NDEBUG" }
        optimize "On"

    import
    {
        EABase = "../EABase",
        EASTL = "."
    }
