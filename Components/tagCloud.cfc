<cfcomponent>   
	<cffunction name="init" access="public" returntype="struct">
		<cfargument name="textarea">
		<cfset local.string = REReplace(arguments.textarea, "[^a-zA-Z0-9\s]", " ", "ALL")>
		<cfset local.mystructure = {}>
		<cfset local.wordsArray = ListToArray(#local.string#, " ")>
		<cfloop array="#local.wordsArray#" index="i">
			<cfif NOT StructKeyExists(local.mystructure, "#i#")> 				
				<cfset local.mystructure[i] = 1>					
			<cfelse>
				<cfset local.mystructure[i] = local.mystructure[i] + 1>
        	</cfif>  			
		</cfloop>
		<cfreturn local.mystructure>		
	</cffunction>
	
	<cffunction name="insertToDatabase" access="public">
		<cfargument name="textarea">
		<cfset local.string = REReplace(arguments.textarea, "[^a-zA-Z0-9\s]", " ", "ALL")>
		<cfset session.mystructure = {}>
		<cfset local.wordsArray = ListToArray(#local.string#, " ")>
		
		<cfloop collection="#session.mystructure#" item="word">
			<cfquery name="insertword" datasource="#application.datasoursename#">
				INSERT
				INTO words (words)
				VALUES (<cfqueryparam value="#word# #session.mystructure[word]#" cfsqltype="CF_SQL_varchar">)
			</cfquery>
		</cfloop>
		<cfreturn "Records inserted to db">
	</cffunction>	

	<!---<cffunction name="fromdb" access="public">
		<cfquery name="selectwords" datasource="#application.datasoursename#">
			SELECT SUBSTRING_INDEX(words, ' ', 1)  AS words,SUBSTRING_INDEX(words, ' ', -1) AS countofstring
			FROM
			words			 
			ORDER BY ABS(countofstring) DESC,CHAR_LENGTH(words) DESC,words ASC
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
	</cffunction>--->	
</cfcomponent>