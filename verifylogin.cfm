<CFIF STRUCTKEYEXISTS(url, 'loginsuccess')>

    <CFSET session.employeeID = #url.loginsuccess#>
	<cflocation url="http://performance.nassauclerk.com"> 
<CFELSE>

login was not successful!!

</CFIF>