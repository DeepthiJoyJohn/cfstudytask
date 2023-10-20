<cfcomponent>
    <cffunction name="task18" access="public">
		<cfset local.result = QueryNew("ID, Name, Email", "integer, varchar, varchar")>
		<cfset QueryAddRow(local.result,[{id=1,Name="Ryan Justus John",Email="ryan@hotmmail.com"}])>
		<cfset QueryAddRow(local.result,[{id=2,Name="Celine Jane John",Email="celine@yahoo.com"}])>
		<cfset QueryAddRow(local.result,[{id=3,Name="Jayden Joy",Email="jayden@gmail.com"}])>
		<cfreturn local.result>
    </cffunction>
</cfcomponent>