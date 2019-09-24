project "Glad"
    kind "StaticLib"
    language "C"
    systemversion "latest"
    staticruntime "on"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "include/KHR/khrplatform.h",
        "include/glad/glad.h",
        "src/glad.c"
    }

    includedirs "./include"
  
    --Configuration specific settings for all system
    filter "configurations:Debug"
        symbols "on"
        runtime "Debug"

    filter "configurations:Release"
        optimize "on"
        runtime "Release"
