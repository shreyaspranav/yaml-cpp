project "yaml-cpp"
	kind "SharedLib"
	language "C++"

	targetdir ("%{wks.location}/bin/" .. bin_folder .. "/")
	objdir ("%{wks.location}/bin/" .. bin_folder .. "/obj")

	files
	{
		"src/**.h",
		"src/**.cpp",

		"include/**.h"
	}

	includedirs
	{
		"include/"
	}

	defines {"yaml_cpp_EXPORTS"}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release_Debug"
		runtime "Release"
		optimize "on"

	filter "configurations:Production"
		runtime "Release"
		optimize "on"
		symbols "off"
