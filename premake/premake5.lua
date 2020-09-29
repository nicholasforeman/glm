project "glm"
	location "%{wks.location}/engine/dependencies/glm"
	kind "StaticLib"
	language "C"
	staticruntime "on"
	
	targetdir "%{binDir}"
	objdir "%{binIntDir}"
		
	files {
	}
	
	filter "configurations:Development"
		symbols "on"
		runtime "Debug"
	
	filter "configurations:Testing"
		optimize "on"
		runtime "Release"
	
	filter "configurations:Production"
		optimize "on"
		runtime "Release"
