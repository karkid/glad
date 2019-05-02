project "Glad"
    kind "StaticLib"
    language "C"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
    "include/KHR/khrplatform.h",
    "include/glad/glad.h",
    "src/glad.c"
    }

    includedirs "./include"


    filter "system:windows"
        buildoptions { "-std=c11", "-lgdi32" }
        systemversion "latest"
        staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"

    filter "system:macosx"
        buildoptions { "-std=c11" }
        systemversion "latest"
        staticruntime "On"
