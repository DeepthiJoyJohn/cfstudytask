<cfcomponent>
    <cffunction name="task17" access="public">
		<cfargument name="textbox">
		<cfset local.result="">			
		<cfloop from="1" to="#arguments.textbox#" index="i">
			<cfif i%2 EQ 0>
				<cfset local.result=local.result&"<span class='even'>#i#</span>">
			<cfelse>
				<cfset local.result=local.result&"<span class='odd'>#i#</span>">
			</cfif>
		</cfloop>
		<cfreturn local.result>
    </cffunction>
</cfcomponent>