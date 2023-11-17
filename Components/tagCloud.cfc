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

	<cffunction name="checkInDatabase" access="public" returntype="numeric">
		<cfargument name="words">
		<cfargument name="occurrences">
		<cfquery name="qcheckInDatabase" datasource="#application.datasoursename#">
				SELECT words
				FROM words				
				WHERE words=<cfqueryparam value="#arguments.words# #arguments.occurrences#" cfsqltype="CF_SQL_varchar">
		</cfquery>
		<cfreturn qcheckInDatabase.recordCount>
	</cffunction>
	
	<cffunction name="insertToDatabase" access="public" returntype="string">
		<cfargument name="textarea">
		<cfset local.string = REReplace(arguments.textarea, "[^a-zA-Z0-9\s]", " ", "ALL")>
		<cfset local.wordsArray = ListToArray(#local.string#, " ")>
		<cfloop array="#local.wordsArray#" index="item">		    
			<cfset local.occurrences= (Len(#local.string#) -Len(Replace(#local.string#,#item#,'','all')))/ Len(#item#)>
			<cfset local.wordPresent=checkInDatabase(item,local.occurrences)>
			<cfif local.wordPresent EQ "0" AND (NOT IsNumeric(item)) AND (LEN(item) GT 2)> 
				<cfquery name="insertWordToDb" datasource="#application.datasoursename#">
					INSERT
					INTO words (words)
					VALUES (<cfqueryparam value="#item# #local.occurrences#" cfsqltype="CF_SQL_varchar">)
				</cfquery>
			</cfif>
		</cfloop>		
		<cfreturn "Records inserted to db">
	</cffunction>	

	<cffunction name="readingFromDb" access="public" returntype="query">
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

	<cffunction name="readFromUpload" access="public" returntype="query">
	    <cfargument name="fileUpload">		
		<cfset local.absolutePath = expandPath("..\Images")>
		<cffile action="upload" filefield="fileUpload" destination="#local.absolutePath#" accept="text/plain,text/csv" nameconflict="overwrite">
		<cffile action="read" file="#local.absolutePath#/#CLIENTFILE#" variable="fileContent">
		<cfset local.string = Replace(fileContent, ".", " ", "ALL")>		
		<cfset local.wordsArray = ListToArray(#local.string#, " ")>
		<cfloop array="#local.wordsArray#" index="i">	
			<cfset local.occurrences= (Len(#local.string#) -Len(Replace(#local.string#,#i#,'','all')))/ Len(#i#)>
			<cfset local.wordPresent=checkInDatabase(i,local.occurrences)>		         	
			<cfif local.wordPresent EQ "0" AND (NOT IsNumeric(i)) AND (LEN(i) GT 2)>				
				<cfquery name="qInsertWord" datasource="#application.datasoursename#">
					INSERT
					INTO words (words)
					VALUES (<cfqueryparam value="#i# #local.occurrences#" cfsqltype="CF_SQL_varchar">)
				</cfquery>
			</cfif>			 
		</cfloop>
		<cfset local.dataReadFromDb=readingFromDb()>
		<cfreturn local.dataReadFromDb>
	</cffunction>
</cfcomponent>