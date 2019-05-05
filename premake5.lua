project "Glad"
    kind "StaticLib"
    language "C"
    systemversion "latest"
    staticruntime "on"
    buildoptions { "-std=c11" }

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "include/KHR/khrplatform.h",
        "include/glad/glad.h",
        "src/glad.c"
    }

    includedirs "./include"

    --Visual Studio IDE specific setting for Window system
    filter "system:windows"
        buildoptions { "-lgdi32" }
    
    --Configuration specific settings for all system
    filter "configurations:Release"
        runtime "Release"
