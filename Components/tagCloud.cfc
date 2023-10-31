<cfcomponent>   
	<cffunction name="init" access="public" returntype="Object">
		
	</cffunction>
	
	<cffunction name="setstructure" access="public">
		<cfargument name="textarea">
		<cfset local.string = Replace(arguments.textarea, ".", " ", "ALL")>
		<cfset session.mystructure = {}>
		<cfset local.wordsArray = ListToArray(#local.string#, " ")>
		<cfloop array="#local.wordsArray#" index="i">
			<cfif NOT StructKeyExists(session.mystructure, "#local.wordsArray[i]#")>            	
				<cfif NOT IsNumeric(i) AND LEN(i) GT 2>
					<cfset session.mystructure[i] = 1>
					<cfquery name="insertword" datasource="#application.datasoursename#">
						INSERT
						INTO words (words)
						VALUES (<cfqueryparam value="#i#" cfsqltype="CF_SQL_varchar">)
					</cfquery>
				</cfif>
			<cfelse>
				<cfset session.mystructure[i] = session.mystructure[i] + 1>
        	</cfif>  
		</cfloop>
		
		<cfreturn "Records inserted to db">
	</cffunction>	

	<cffunction name="fromdb" access="public">
		<cfquery name="selectwords" datasource="#application.datasoursename#">
			SELECT * 
			FROM
			words
			WHERE 
			LENGTH(words) > 2 
			ORDER BY LENGTH(words) DESC,words ASC
		</cfquery>
		<cfreturn selectwords>		
	</cffunction>
	<cffunction name="cleardb" access="public">			
		<cfquery name="cleardb" datasource="#application.datasoursename#">
			DELETE 
			FROM
			words
			WHERE 
			1
		</cfquery>
	</cffunction>		
</cfcomponent>