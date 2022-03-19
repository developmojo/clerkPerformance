			
			
			
			
<div class="menuSideUpper">
		
	<div class="dotBig">


			<DIV class="dotBigtext">
			
			<CFIF ISDEFINED("url.eid") and url.EID NEQ ''>
			   
			   <!--- PULL INITIALS OF DETAIL PERSON --->
			   <CFOUTPUT>#LEFT(viewemployees.fname,'1')##LEFT(viewemployees.Lname,'1')#</CFOUTPUT>
			
			<CFELSEIF ISDEFINED("session.eid") and session.EID NEQ ''>
				
				<!--- PULL INITIALS OF LOGGED IN PERSON --->
			    <CFOUTPUT>#LEFT(session.fname,'1')##LEFT(session.Lname,'1')#</CFOUTPUT>
				
			<cfelse>
			
				AA <!--- DEFAULT PERSON --->
				
			</CFIF>
			
			</DIV>
    
	</div>		
	
	<DIV CLASS="underBigCircleUserInfo">
			MICHAEL MCCLELLAN
			<BR>
			Assistant Chief Deputy IT
			<BR>
			
			<i class="fa fa-envelope" style="font-size:14px"></i> MMCCLELLAN@NASSAUCLERK.COM
			
	</DIV>
	
		<DIV CLASS="underBigCircleUserInfo">
			<A HREF="?action=editEmployee&userID=#placeholderEmployeeID#"><button type="button" class="btn btn-secondary btn-sm">EDIT</button></a>        
			<A HREF="?action=viewEmployee&userID=#placeholderEmployeeID#"><button type="button" class="btn btn-secondary btn-sm">VIEW MORE</button></a>

	</DIV>
	
</div>
			


<CFIF ISDEFINED("url.userID") and url.userID NEQ '' and isdefined("url.action") and url.action EQ 'forms'>
	
	<div class="menuSideLower1">		
			<UL>
			<LI>Forms I Need To Do</LI>
			<LI>Forms I Did</LI>
			<LI>Reviews of Me</LI>
			<LI>My Team</LI>
			</UL>
	</div>
	
<CFELSE>

	<div class="menuSideLower1">
			MANAGER<BR>
			<SPAN CLASS="dotSmall">RA</SPAN><a href="?userID=#placeholderEmployeeID#">Rob Amos</a>
			</div>
						
			<div class="menuSideLower2">

				DIRECT REPORTS
				<BR>
				<SPAN CLASS="dotSmall">PM</SPAN><a href="?userID=#placeholderEmployeeID#">Patrick Mudd</a>
				<Br>
				<SPAN CLASS="dotSmall">JV</SPAN><a href="?userID=#placeholderEmployeeID#">Jacob Voss</a>
				<br>
				<SPAN CLASS="dotSmall">HA</SPAN><a href="?userID=#placeholderEmployeeID#">Hank Adams</a>

	</div>

</CFIF>
			
