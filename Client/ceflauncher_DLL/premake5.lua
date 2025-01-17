project "CEFLauncher DLL"
	language "C++"
	kind "SharedLib"
	targetname "CEFLauncher_DLL"
	targetdir(buildpath("mta/cef"))
	
	includedirs { 
		"../../vendor/cef3" 
	}

	defines { "UNICODE" }
	
	vpaths { 
		["Headers/*"] = "**.h",
		["Sources/*"] = "**.cpp",
		["*"] = "premake5.lua"
	}

	
	files {
		"premake5.lua",
		"*.h",
		"*.cpp"
	}
	
	links { "CEF",  "../../vendor/cef3/Release/libcef.lib" }

	filter "architecture:x64"
		flags { "ExcludeFromBuild" } 
		
	filter "system:not windows"
		flags { "ExcludeFromBuild" } 
