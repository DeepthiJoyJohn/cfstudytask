<cfcomponent>	
    <cffunction name="fun_task13" access="public">
		<cfargument name="textbox">
		<cfset local.string="the quick brown fox jumps over the lazy dog">
		<cfset local.substring="#arguments.textbox#">
		<cfset local.numarray = listToArray(local.string, " ")>
		<cfset local.count=0;
		<cfloop from="1" to="#ArrayLen(local.numarray)#" index="i">	
			<cfif arguments.textbox EQ local.numarray[i]>
				<cfset local.count=local.count+1>
			</cfif>
		</cfloop>
		<cfreturn local.count>
    </cffunction>
</cfcomponent>