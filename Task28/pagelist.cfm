<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css"> 
        <script src="../js/task28.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">                      
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>       
    </head>
        <body>
            <form action="pagelist.cfm" method="post">
                <cfinvoke component="cfstudytask/Components/task28" method="pagelist" returnvariable="pagelist">
                    <cfinvokeargument name="pageid" value="0">
                </cfinvoke>
                <cfoutput>
                    <cfif pagelist.recordCount EQ 0>                    
                        <span class="errorspan">No Pages to display!!!</span>
                    <cfelse>
                        <table>
                            <tr>
                                <th>Page List</th>
                            </tr>
                            <cfset local.slno="1">
                            <cfloop query="pagelist">
                                <tr>
                                    <td>
                                        <ul>
                                            <li class="pagelist" onclick="displaypagedetails(#pagelist.pageid#)">Page-#pagelist.pageid#</li>
                                            <li class="pagedetails" id="#pagelist.pageid#" >
                                                <table>
                                                    <tr>
                                                        <th>Page Name</th>
                                                        <th>Page Description</th>
                                                    </tr>
                                                    <tr>                                                        
                                                        <td><span class="value">#pagelist.pagename#</span></td>
                                                        <td><span class="value">#pagelist.pagename#</span></td>
                                                    </tr>
                                                </table>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                            </cfloop>
                        </table>
                    </cfif>
                </cfoutput>
            </form> 
            
        </body>
    </html>