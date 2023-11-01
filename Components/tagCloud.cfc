<cfcomponent>   
	<cffunction name="init" access="public" returntype="Object">
		
	</cffunction>

	<cffunction name="setstructure" access="public">
		<cfargument name="textarea">
		<cfset session.mystructure=StructNew()>
		<cfset local.wordsArray = ListToArray(#arguments.textarea#, " ")>
		<cfloop array="#local.wordsArray#" index="i">
			<cfif NOT StructKeyExists(session.mystructure, i)>
            	<cfset session.mystructure[i] = 0>
				<cfif NOT IsNumeric(i)>
					<cfquery name="insertword" datasource="#application.datasoursename#">
						INSERT
						INTO words (words)
						VALUES (<cfqueryparam value="#i#" cfsqltype="CF_SQL_varchar">)
					</cfquery>
				</cfif>
        	</cfif>       
        	<cfset session.mystructure[i] = session.mystructure[i] + 1>
		</cfloop>
		<cfreturn "Records inserted to db">
	</cffunction>	

	<cffunction name="fromdb" access="public">	
		<cfset session.sortedstructure=StructNew()>	
		<cfquery name="selectwords" datasource="#application.datasoursename#">
			SELECT * 
			FROM
			words
			WHERE 
			LENGTH(words) > 2 
			ORDER BY LENGTH(words) DESC,words ASC
		</cfquery>
		
		<cfloop query="selectwords" group="words">
			<cfif StructKeyExists(session.mystructure, selectwords.words)>
            	<cfset session.sortedstructure[selectwords.words] = session.mystructure[words]>
			</cfif>
		</cfloop>
	</cffunction>		
</cfcomponent>