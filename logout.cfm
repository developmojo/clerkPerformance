<cfparam name="sitepath" default="http://support.nassauclerk.com/">

<cfif IsDefined("URL.MM_logout") AND URL.MM_logout EQ "1">
  <cflock scope="Session" type="Exclusive" timeout="30" throwontimeout="no">
    <cfset Session.MM_Username="">
    <cfset Session.MM_UserAuthorization="">
    <cfset session.employeeid="">
    <cfset session.permlevel="">
    </cflock>
  <cfset MM_logoutRedirectPage="#sitepath#login.cfm?action=MM_logout">
  <cfif MM_logoutRedirectPage EQ "">
    <cfset MM_logoutRedirectPage=CGI.SCRIPT_NAME>
  </cfif>
  <cfset MM_logoutQuery=ListDeleteAt(CGI.QUERY_STRING,ListContainsNoCase(CGI.QUERY_STRING,"MM_logout=","&"),"&")>
  <cfif MM_logoutQuery NEQ "">
    <cfif Find("?",MM_logoutRedirectPage) EQ 0>
      <cfset MM_logoutRedirectPage=MM_logoutRedirectPage & "?" & MM_logoutQuery>
      <cfelse>
      <cfset MM_logoutRedirectPage=MM_logoutRedirectPage & "&" & MM_logoutQuery>
    </cfif>



  </cfif>


   <cfscript>
   StructClear(Session);
  </cfscript>

  <cflocation url="#MM_logoutRedirectPage#" addtoken="no">






</cfif>