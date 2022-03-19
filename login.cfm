<CFTRY>

 <CFIF isdefined("url.source") and url.source NEQ "">
         
                <CFQUERY datasource="#application.dsn#" name="autologin">
                
                SELECT * FROM Technician t
                JOIN userdetails ud ON t.employeeid = ud.employeeid
                WHERE 0=0 
        
                <CFIF IsDefined("url.sid") AND #url.sid# NEQ "">
                AND ud.employeeid = <CFQUERYPARAM value="#url.sid#" cfsqltype="cf_sql_integer">
                </CFIF>
                
                </CFQUERY>

               
                
                
                <cfset isAuthenticated="yes">
                <cfset session.employeeid = '#url.sid#'>
                <cfset session.email = '1'>
                <cflocation url="http://support.nassauclerk.com">
                
        
         
         <CFELSE>
        
        
        
        <!---<cfinclude template="header.cfm">
        --->
        
        <!DOCTYPE html>
        <html lang="en">
                <head>
                    <meta charset="utf-8">
                    <meta name="description" content="Intranet - Employee helpdesk">
                    <meta name="keywords" content="">
                    <meta name="author" content="Michael McClellan / Jacob Voss">
                        <meta name="viewport" content="width=device-width, initial-scale=1">
                    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                    <link href="_css/layout.css" rel="stylesheet" type="text/css" />
                    <!---<link href="_css/ticketDiv.css" rel="stylesheet" type="text/css" />--->
                    <link href="_css/pagestructure.css" rel="stylesheet" type="text/css" />
                    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
                    
                    </script>
                    
                     <link rel="shortcut icon" href="">
             
        <style>
		
		     body {
				 background-image:url('_images/gearsbackground1.png');background-repeat: no-repeat; background-size: 2000px 1000px;
				 
				 }
			 
        
             #loginTitle
             
             {
                text-align: left;
                font-weight: bold;
                min-width:50%;
                font-size:2.25vw;
                border-bottom: 4px solid orangered;
                background-color: darkslategray;
                color: white;
                height:60px;
				
             }
            
             #loginTable
             
             {	 
                text-align: justified;
                display: block;
                margin-left: auto;
                margin-right: auto;
                padding-bottom: 20px;
                padding-left: 10px;
				
             }
             
             
            #loginForm 
            
            {
              border: 2px solid #060;
              border-radius: 4px;	
              width: 35%;
              min-width: 550px;
              text-align: center;
              margin-left: auto;
              margin-right: auto;
              margin-top: 15%;
              margin-bottom: auto;
			  background-color:#FFF;
            }
            
            #LoginFailedFont
            
            {
                font-weight: bold;
                font-size: 1vw;
                
            }
        
        </style>
             
             
             
             
                </head>
        
            
        <!---<CFINCLUDE template="_inc/header.cfm">--->
         
        
            
                        <cfif isdefined("submit") and submit NEQ "">
                        
                            <cftry>
                               <cfldap action="QUERY"
                                  name="auth"
                                  attributes="cn,description,ou,sn,dn,department,company"
                                  start="dc=NassauCounty,dc=com"
                                  server="ncdc02.NassauCounty.com"
                                  scope="subtree"
                                  username="Nassau\#LCASE(form.username)#"
                                  password="#form.password#"
                                  filter="samAccountname=#LCASE(form.username)#"
                                  >
                               <cfset isAuthenticated="yes">	
                            <cfcatch type="ANY">
                               <cfset isAuthenticated="no">
                            </cfcatch>
                            </cftry>
                        
        
        
                       </CFIF>
                       
        
        
        
        
                <div id="loginForm">
                        <p id="loginTitle">&nbsp;<cfoutput>#this.name#</cfoutput></p>
                        <table id="loginTable" bgcolor="#FFFFFF" border="0">
                                        <caption></caption>
                          <tr>
                          <td width="" height="10" class="bottom_level_headers" style="font-weight: bold;"><br><br>Enter your Windows Username and Password below to log into the Clerk HelpDesk</td>
                       
                          <td width="" rowspan="2" valign="top" bgcolor="#FFFFFF" class="bottom_level_headers"><table width="100%" height="185" border="0" align="center" cellpadding="5" cellspacing="0">
                             <br>
                          </table>
                          </td>
                              
                              </tr>
                              <tr>
                                <td align="left" valign="top">
                                  
                                  
                                  <cfform action="" method="post" name="form" preservedata="yes">
                                    <table width="100%" border="0" cellpadding="2" cellspacing="5">
                                      <tr>
                                        <td>
                                        <CFIF ISDEFINED("url.backdoor") and url.backdoor EQ '999'>
                                        <span class="loginbodytext" style="font-weight: bold;">Username:</span></td> <td><input name="username" type="text" class="form-control" id="username" /></td>
                                        
                                        <CFELSE>
                                        <span class="loginbodytext" style="font-weight: bold;">Username:</span></td> <td><input name="username" type="text" class="form-control" id="username" /></td>
                                        </CFIF>
                                      </tr>
            
                                      <tr>   <br>
                                        <td>
                                        <CFIF ISDEFINED("url.backdoor") and url.backdoor EQ '999'>
                                        <span class="loginbodytext" style="font-weight: bold;" >Password:</span></td><td><input name="password" type="password" class="form-control" id="password"/>
                                        <CFELSE>
                                        <span class="loginbodytext" style="font-weight: bold;" >Password:</span></td><td><input name="password" type="password" class="form-control" id="password" />
                                        </CFIF>
                                        
                                      </tr>
                                      <tr>
            <td>   <br>   <br>   <br></td> <td colspan="2"><input name="Submit" type="submit" style="background-color: steelblue;" class="btn btn-primary" id="button" value="Login" /></td>
                                      </tr>
            
                                    </table>
                                  </cfform>
                                </td>
                              </tr>
                              <div id="LoginFailedFont">          
                       <CFIF isdefined("isAuthenticated") and isAuthenticated EQ "no">
                        
                     <span class="top_level_headers">
                     
                     	<a href="login.cfm" class="top_level_headers">Login Failed - Please Try Again</a>
                     
                     </span>
                     	<BR />
                  			 <span class="red_text_normal">Did you have Caps Lock On?</span>
                   
                       <CFELSE>
                        
                            <CFIF ISDEFINED("auth.company") AND auth.company GTE 1>
                           		<cfset session.employeeid = '#auth.company#'>
                                            <!--- THIS IS HERE TO CONTROL MAIL BY ENABLING ONE PLACE TO TURN OFF ALL MAIL AND BACK ON --->
                                <cfset session.email = '1'>
                                <cfset session.permlevel = '0'>
                                <cfset session.useModules = '0'>
                                <!--- ****** --->
                                
                                <!---<cflocation url="viewTicket.cfm">--->
                                <cflocation url="http://support.nassauclerk.com" addtoken="no">
                            
                            <CFELSE>
                                  
                               <!---Authorization Invalid.  Please Contact IT to assign your Employee Number to the application. ---> 

                            </CFIF>
                            
                       </CFIF>
                       </div>
                          </table>
            
        </div>
            
            <br />
            </div>
        
            <div>
            <!---<CFINCLUDE template="_inc/footer.cfm">--->
            </div>
            </div>
            
         </CFIF>
         
<cfcatch type="database">
    <h1>Database Offline!</h1>
    <p>Sorry, the database threw an error: <CFOUTPUT>#cfcatch.queryError#</CFOUTPUT>.  Try again later.</p><cfabort>
  </cfcatch>

</cftry>