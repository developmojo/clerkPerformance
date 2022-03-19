
	<div class="menuContent">	
			
<div class="menuUpper">
		
	<div class="dotBig">


			<DIV class="dotBigtext">
			
			
			   
			   <!--- PULL INITIALS OF DETAIL PERSON --->
			   <CFOUTPUT>
			   
				
					
			<CFIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'drid') and url.drID NEQ ''>
				
				#LEFT(UnifiedEmployees.fname,'1')##LEFT(UnifiedEmployees.lname,'1')#
			
			<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'mgrid') AND url.mgrID NEQ '' >
				
				#LEFT(UnifiedEmployees.fname,'1')##LEFT(UnifiedEmployees.lname,'1')#
				
			<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'eid') and url.eID NEQ ''>
			
				#LEFT(UnifiedEmployees.fname,'1')##LEFT(UnifiedEmployees.lname,'1')#

			<CFELSE>
				
				
					#LEFT(UnifiedEmployees.fname,'1')##LEFT(UnifiedEmployees.lname,'1')#
			    
				
			</CFIF>
			   
			   </CFOUTPUT>
			   
			
			
			
			</DIV>
    
	</div>		
	
	<DIV CLASS="underBigCircleUserInfo">
			
			   <CFOUTPUT>
			   
			   <CFIF structkeyexists(session, 'employeeid')>
			   

				 
				 
				<CFIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'drid') and url.drID NEQ ''>
				
					#UnifiedEmployees.fname# #UnifiedEmployees.lname#
					<Br>
					<span class="jobtitle">#UnifiedEmployees.jobTitleMunisDesc#</SPAN>
				 
			
			    <CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'mgrid') AND url.mgrID NEQ '' >
				
					#UnifiedEmployees.fname# #UnifiedEmployees.lname#
					<Br>
					<span class="jobtitle">#UnifiedEmployees.jobTitleMunisDesc#</SPAN>
				
			    <CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'eid') and url.eID NEQ ''>
			
					#UnifiedEmployees.fname# #UnifiedEmployees.lname#
					<Br>
					<span class="jobtitle">#UnifiedEmployees.jobTitleMunisDesc#</SPAN>

			    <CFELSE>
				
				
					#UnifiedEmployees.fname# #UnifiedEmployees.lname#
					<Br>
					<span class="jobtitle">#UnifiedEmployees.jobTitleMunisDesc#</SPAN>
			    
				
			</CFIF>
			   
			   </CFIF>
			   
			   
			   
			   
			   
			   
			   <Br>
			
			
<svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
  <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z"/>
</svg>
			<span class="emailaddress">#UnifiedEmployees.email#</span>
			</CFOUTPUT>
	</DIV>
	
		<DIV CLASS="underBigCircleUserInfo">
		<cfoutput>
		
		
		<CFIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'drid') and url.drID NEQ ''>
				
				<A HREF="?action=editEmployee&eid=#url.drid#"><button type="button" class="btn btn-secondary btn-sm">EDIT</button></a>        
				<A HREF="?action=viewEmployee&eid=#url.drid#"><button type="button" class="btn btn-secondary btn-sm">VIEW MORE</button></a>
				
		<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'mgrid') and url.mgrID NEQ ''>
		
				<A HREF="?action=editEmployee&eid=#url.mgrid#"><button type="button" class="btn btn-secondary btn-sm">EDIT</button></a>        
				<A HREF="?action=viewEmployee&eid=#url.mgrid#"><button type="button" class="btn btn-secondary btn-sm">VIEW MORE</button></a>
				
		<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'eid') and url.eID NEQ ''>
		
				<A HREF="?action=editEmployee&eid=#url.eid#"><button type="button" class="btn btn-secondary btn-sm">EDIT</button></a>        
				<A HREF="?action=viewEmployee&eid=#url.eid#"><button type="button" class="btn btn-secondary btn-sm">VIEW MORE</button></a>

		<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'editEmployee' AND structkeyexists(url, 'eid') and url.eID NEQ ''>	

			<A HREF="?action=editEmployee&eid=#url.eid#"><button type="button" class="btn btn-secondary btn-sm">EDIT</button></a>        
			<A HREF="?action=viewEmployee&eid=#url.eid#"><button type="button" class="btn btn-secondary btn-sm">VIEW MORE</button></a>	
				
		<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewEmployee' AND structkeyexists(url, 'eid') and url.eID NEQ ''>	

			<A HREF="?action=editEmployee&eid=#url.eid#"><button type="button" class="btn btn-secondary btn-sm">EDIT</button></a>        
			<A HREF="?action=viewEmployee&eid=#url.eid#"><button type="button" class="btn btn-secondary btn-sm">VIEW MORE</button></a>		
		
		<CFELSE>
		
			
				<A HREF="?action=editEmployee&eid=#session.employeeid#"><button type="button" class="btn btn-secondary btn-sm">EDIT</button></a>        
				<A HREF="?action=viewEmployee&eid=#session.employeeid#"><button type="button" class="btn btn-secondary btn-sm">VIEW MORE</button></a>
		
		</CFIF>	   
			
		

		</cfoutput>
	</DIV>
	
</div>
			


<CFIF ISDEFINED("url.eID") and url.eID NEQ '' and isdefined("url.action") and url.action EQ 'forms'>
	
	<div class="menuCenter">		
			<UL class="list-group">
			<LI class="list-group-item borderless">Forms I Need To Do</LI>
			<LI class="list-group-item borderless">Forms I Did</LI>
			<LI class="list-group-item borderless">Reviews of Me</LI>
			<LI class="list-group-item borderless">My Team</LI>
			</UL>
	</div>
	
<CFELSE>

	<div class="menuCenter">
	
			MANAGER<BR>
			<cfoutput><SPAN CLASS="dotSmall">#LEFT(viewEmployeeDetail.sfname,'1')##LEFT(viewEmployeeDetail.slname,'1')#</SPAN><a href="?action=viewUser&mgrID=#viewEmployeeDetail.supervisorID#">#viewEmployeeDetail.supervisorusername#</a></cfoutput>
			</div>
						
			<div class="menuLower">

				DIRECT REPORTS
				<BR>
				
				<ul class="list-group" id="drList">
				<cfoutput query="viewEmployeeDR">
				
					<LI class="list-group-item borderless">
					
					
					<SPAN CLASS="dotSmall">#LEFT(viewEmployeeDr.fname,'1')##LEFT(viewEmployeeDR.lname,'1')#</SPAN>
					
					<a href="?action=viewUser&drID=#viewEmployeeDR.eid#">#viewEmployeeDR.fullname#</a>
					
					</li>
				</cfoutput>
				</ul>
     
	</div>

</CFIF>
		
		</div>
		
