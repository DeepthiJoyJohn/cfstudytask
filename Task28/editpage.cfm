<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css"> 
        <script src="../js/task28.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">                      
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>       
    </head>
        <body>
            <form action="editpage.cfm" method="post">
                <cfinvoke component="cfstudytask/Components/task28" method="pagelist" returnvariable="pagelist">
                    <cfinvokeargument name="pageid" value="0">
                </cfinvoke>
                <cfoutput>
                    <cfif pagelist.recordCount EQ 0>                    
                        <span class="errorspan">No Pages to display!!!</span>
                    <cfelse>
                        <table>
                            <tr>
                                <th>SL:NO</th>
                                <th>Page Name</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="text" name="pagename" id="pagename"></td>
                                <td><input type="text" name="pagedesc" id="pagedesc"></td>
                                <td class="center">
                                    <input type="hidden" id="pageid" name="pageid">
                                    <button type="button" onclick="addpage()"><i class="fa fa-plus Monday" aria-hidden="true"></i></button>&nbsp;&nbsp;&nbsp;
                                    <button type="button" onclick="cancelpage()"><i class="fa fa-close Saturday" aria-hidden="true"></i></button>
                                </td>
                            </tr>
                            <cfset local.slno="1">
                            <cfloop query="pagelist">
                                <tr>
                                    <td>#local.slno#</td>
                                    <td>#pagelist.pagename#</td>
                                    <td>#pagelist.pagedesc#</td>
                                    <td class="center">
                                        <button type="button" onclick="editpage(#pagelist.pageid#)"><i class="fa fa-edit Friday"></i></button>&nbsp;&nbsp;
                                        <button type="button" onclick="removepage(#pagelist.pageid#)"><i class="fa fa-trash Saturday" aria-hidden="true"></i></button>&nbsp;&nbsp;
                                        
                                    </td>
                                </tr>
                                <cfset local.slno=local.slno+1>
                            </cfloop>
                        </table>                        
                    </cfif>
                </cfoutput>
            </form> 
            
        </body>
    </html>