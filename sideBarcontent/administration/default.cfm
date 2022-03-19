			
			
<div class="menuSide_administration" id="menuSide_administration"  onmouseover="displayAdminMenu();" onmouseout="hideAdminMenu();">

<ul class="list-group">



<CFIF ISDEFINED("url.action") AND URL.action EQ ''>
    <li class="selected list-group-item"><A HREF="?action=?"><span class="glyphicon glyphicon-home"><span class="adminMenuCollapse" id="adminMenuCollapse1">HOME</span></span></a></li>
<CFELSE>   
    <li class="fa list-group-item"><A HREF="?action=?"><span class="glyphicon glyphicon-home"><span class="adminMenuCollapse" id="adminMenuCollapse1">HOME</span></span></a></li>
</CFIF>

<CFIF ISDEFINED("url.action") AND URL.action EQ 'employees'>
    <li class="selected list-group-item"><A HREF="?action=employees"><span class="glyphicon glyphicon-user"><span class="adminMenuCollapse" id="adminMenuCollapse2">EMPLOYEES</span></span></A></li>
<CFELSE>    
    <li class="fa list-group-item"><A HREF="?action=employees"><span class="glyphicon glyphicon-user"><span class="adminMenuCollapse" id="adminMenuCollapse2">EMPLOYEES</span></span></A></li>
</CFIF>

<CFIF ISDEFINED("url.action") AND URL.action EQ 'reviewTemplates'>
    <li class="selected list-group-item"><A HREF="?action=reviewTemplates"><span class="glyphicon glyphicon-list-alt"><span class="adminMenuCollapse" id="adminMenuCollapse3">REVIEW TEMPLATES</span></span></A></li>
<CFELSE>    
    <li class="fa list-group-item"><A HREF="?action=reviewTemplates"><span class="glyphicon glyphicon-list-alt"><span class="adminMenuCollapse" id="adminMenuCollapse3">REVIEW TEMPLATES</span></span></A></li>
</CFIF>

<CFIF ISDEFINED("url.action") AND URL.action EQ 'reviewForms'>
    <li class="selected list-group-item"><A HREF="?action=reviewForms"><span class="glyphicon glyphicon-list-alt"><span class="adminMenuCollapse" id="adminMenuCollapse4">REVIEW FORMS</span></span></A></li>
<CFELSE>    
    <li class="fa list-group-item"><A HREF="?action=reviewForms"><span class="glyphicon glyphicon-list-alt"><span class="adminMenuCollapse" id="adminMenuCollapse4">REVIEW FORMS</span></span></A></li>
</CFIF>

<CFIF ISDEFINED("url.action") AND URL.action EQ 'userlogs'>
    <li class="selected list-group-item"><A HREF="?action=userlogs"><span class="glyphicon glyphicon-tasks"><span class="adminMenuCollapse" id="adminMenuCollapse5">USER LOGS</span></span></A></li>
<CFELSE>  
    <li class="fa list-group-item"><A HREF="?action=userlogs"><span class="glyphicon glyphicon-tasks"><span class="adminMenuCollapse" id="adminMenuCollapse5">USER LOGS</span></span></a></li>
</CFIF>

</ul>

</DIV>
			
