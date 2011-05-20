<cfcomponent output="false" mixin="global">

	<cffunction name="init">
		<cfset this.version = "1.1.3" />
		<cfreturn this />
	</cffunction>

	<cffunction name="deHumanize" access="public" output="false" returnType="string"> 
        <cfargument name="text" type="string" required="true" />
		<cfscript>
			var returnValue = REReplace(arguments.text, "\s([[:upper:]])", "\1", "all"); // adds a space before every capitalized word
			returnValue = REReplace(returnValue, "^([A-Z])", "\l\1", "all");
		</cfscript>
        <cfreturn returnValue />
	</cffunction>

</cfcomponent>