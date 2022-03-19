<CFIF ISDEFINED("url.action") and url.action EQ 'administration'>
    <DIV class="menu">
        <div class="menuContent">
        <cfinclude template="sidebarcontent/administration/default.cfm">
        </div>
    </div>
    
<CFELSEIF ISDEFINED("url.action") and url.action EQ 'reviews'>	

    <DIV class="menu">
        <div class="menuContent">
        <cfinclude template="sidebarcontent/administration/default.cfm">
        </div>
    </div>	



<CFELSEIF ISDEFINED("url.action") and url.action EQ 'reviewtemplates'>	

    <DIV class="menu">
        <div class="menuContent">
        <cfinclude template="sidebarcontent/administration/default.cfm">
        </div>
    </div>	
<CFELSEIF ISDEFINED("url.action") and url.action EQ 'reviewforms'>	

    <DIV class="menu">
        <div class="menuContent">
        <cfinclude template="sidebarcontent/administration/default.cfm">
        </div>
    </div>	

<CFELSEIF ISDEFINED("url.action") and url.action EQ 'createNewForm'>	

    <DIV class="menu">
        <div class="menuContent">
        <cfinclude template="sidebarcontent/administration/default.cfm">
        </div>
    </div>		

<CFELSEIF ISDEFINED("url.action") and url.action EQ 'employees'>	

    <DIV class="menu">
        <div class="menuContent">
        <cfinclude template="sidebarcontent/administration/default.cfm">
        </div>
    </div>

<CFELSEIF ISDEFINED("url.action") and url.action EQ 'userlogs'>	

    <DIV class="menu">
        <div class="menuContent">
        <cfinclude template="sidebarcontent/administration/default.cfm">
        </div>
    </div>
    
<CFELSEIF ISDEFINED("url.action") and url.action EQ 'editEmployee'>	

<!--- DON'T SHOW ANY SIDEBARS --->

<CFELSEIF ISDEFINED("url.action") and url.action EQ 'companyinfo'>	

            <!--- MODIFY THIS ONE TO SHOW A DIFFERENT SIDEBAR WITH ALPHA EMPLOYEE SELECTION--->

<CFELSEIF ISDEFINED("url.action") and url.action EQ 'start-review' and url.do NEQ ''>
            
            <!--- DON'T SHOW ANY SIDEBARS --->

<cfelse>
    <DIV class="menu">
        <div class="menuContent">
        <cfinclude template="sidebarcontent/default.cfm">
        </div>
    </div>
</cfif>