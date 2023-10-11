<cfcomponent>
    <cffunction name="mulitiply" access="public">
		<cfset argcount = ArrayLen(StructKeyArray(arguments))>
		<cfset res="1">
		<cfloop  from="1" to="#argcount#" index="i">
			<cfset res=res*arguments[i]>
		</cfloop>		
		<cfreturn res>
    </cffunction>
</cfcomponent>