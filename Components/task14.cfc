<cfcomponent>	
    <cffunction name="task14" access="public">
      <cfargument name="imagename">
      <cfargument name="imagedescription">
      <cfargument name="filename">
      <cfif len(trim(arguments.filename))>
        <cfset local.filepath="C:\ColdFusion2021\cfusion\wwwroot\cfstudytask\Images">
        <cffile action="upload" fileField="filename" destination="#local.filepath#" nameConflict="overwrite">
        <cfimage action="resize" source="#cffile.serverDirectory#\#serverFile#" width="20" height="20" destination="#cffile.serverDirectory#\thumbnail\#serverFile#" nameConflict="overwrite">
      </cfif>
      <cfquery name="insertimg" datasource="#application.datasoursename#">
          INSERT INTO image (imagename, imagedescription,imagepath,uploadedimgname)
          VALUES (
              <cfqueryparam value="#trim(arguments.imagename)#" cfsqltype="cf_sql_varchar">,
              <cfqueryparam value="#trim(arguments.imagedescription)#" cfsqltype="cf_sql_varchar">,
              <cfqueryparam value="#cffile.serverDirectory#" cfsqltype="cf_sql_varchar">,   
              <cfqueryparam value="#cffile.serverFile#" cfsqltype="cf_sql_varchar">                     
          )
      </cfquery>
      <cfquery name="getimages" datasource="#application.datasoursename#">
          SELECT * 
          FROM image
      </cfquery>
		  <cfreturn getimages>
    </cffunction>
    <cffunction name="task14getdetail" access="public">
      <cfargument name="imageid">
      <cfquery name="getimages" datasource="#application.datasoursename#">
          SELECT * 
          FROM image
          WHERE id=<cfqueryparam value="#url.imageid#" cfsqltype="CF_SQL_INTEGER">
      </cfquery>
      <cfreturn getimages>
    </cffunction>
</cfcomponent>