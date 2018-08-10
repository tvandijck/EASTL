project "EASTL"
    kind "StaticLib"

    includedirs { "../include" }
    files { "../include/**.h", "../include/**.inl", "**.h", "**.cpp" }

    includedependencies { "EABase" }

