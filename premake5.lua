project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
  
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
  
    files
    {
        "src/**.h",
        "src/**.cpp",
        "include/**.h"
    }
  
    filter "system:macosx"
        systemversion "10.15"

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"


