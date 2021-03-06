project "stb_image"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "stb_image.h",
        "stb_image.cpp"
    }

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"
