project "sfml-primitives"
staticruntime "off"
kind "StaticLib"

language "C++"
cppdialect "C++17"

filter "system:macosx"
   buildoptions {
      "-Wall",
      "-Wextra",
      "-Wpedantic",
      "-Wconversion",
      "-Wno-unused-parameter"
   }

filter "system:windows"
   defines "SFML_STATIC"
filter {}

pchheader "prm/pch.hpp"
pchsource "src/pch.cpp"

targetdir("bin/" .. outputdir)
objdir("build/" .. outputdir)

files {
   "src/**.cpp",
   "include/**.hpp"
}
includedirs {
   "include",
   "%{wks.location}/debug-log-tools/include",
   "%{wks.location}/container-view/include",
   "%{wks.location}/vendor/glm",
   "%{wks.location}/vendor/SFML/include",
   "%{wks.location}/vendor/spdlog/include"
}
