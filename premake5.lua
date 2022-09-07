project "imgui"
	kind "staticLib"
	language "C++"

	targetdir ("build/bin/" .. outdir .. "/%{prj.name}")
	objdir ("build/obj/" .. outdir .. "/%{prj.name}")

	files {
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imgui_rectpack.h",
		"imgui_textedit.h",
		"imgui_truetype.h"
	}


	filter { "system:windows" }
		staticruntime "on"
		systemversion "latest"
		cppdialect "C++17"

		
	filter { "configurations:Debug" }
		symbols "on"

	filter { "configurations:Release" }
		optimize "on"

	filter { "configurations:Dist" }
		optimize "on"
		
		
	