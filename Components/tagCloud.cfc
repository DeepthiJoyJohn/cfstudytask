<cfcomponent>   
	<cffunction name="init" access="public" returntype="Object">
		
	</cffunction>
	
	<cffunction name="setstructure" access="public">
		<cfargument name="textarea">
		<cfset local.string = Replace(arguments.textarea, ".", " ", "ALL")>
		<cfset session.mystructure = {}>
		<cfset local.wordsArray = ListToArray(#local.string#, " ")>
		<cfloop array="#local.wordsArray#" index="i">
			<cfif NOT StructKeyExists(session.mystructure, "#i#")> 
				<cfif NOT IsNumeric(i) AND LEN(i) GT 2>
					<cfset session.mystructure[i] = 1>	
				</cfif>
			<cfelse>
				<cfset session.mystructure[i] = session.mystructure[i] + 1>
        	</cfif>  			
		</cfloop>
		<cfloop collection="#session.mystructure#" item="word">
			<cfquery name="insertword" datasource="#application.datasoursename#">
				INSERT
				INTO words (words)
				VALUES (<cfqueryparam value="#word##session.mystructure[word]#" cfsqltype="CF_SQL_varchar">)
			</cfquery>
		</cfloop>
		<cfreturn "Records inserted to db">
	</cffunction>	

	<cffunction name="fromdb" access="public">
		<cfquery name="selectwords" datasource="#application.datasoursename#">
			SELECT RIGHT(words, 1) AS countofstring,SUBSTRING(words, 1, (CHAR_LENGTH(words) - 1)) AS words
			FROM
			words			 
			ORDER BY countofstring DESC,CHAR_LENGTH(words) DESC,words ASC
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

	<cffunction name="readfromupload" access="public">
	    <cfargument name="fileUpload">		
		<cfset local.absolutePath = expandPath("..\Images")>
		<cffile action="upload" filefield="fileUpload" destination="#local.absolutePath#" accept="text/plain,text/csv" nameconflict="overwrite">
		<cffile action="read" file="#local.absolutePath#/#CLIENTFILE#" variable="fileContent">
		<cfset local.string = Replace(fileContent, ".", " ", "ALL")>
		<cfset session.mystructure = {}>
		<cfset local.wordsArray = ListToArray(#local.string#, " ")>
		<cfloop array="#local.wordsArray#" index="i">
			<cfif NOT StructKeyExists(session.mystructure, "#i#")>            	
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
	</cffunction>	
</cfcomponent>