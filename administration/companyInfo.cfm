
<!--- REMOVED FROM THIS PAGE AND PLACED IN HEADER --->
<!--- <CFINCLUDE TEMPLATE="../_qry/_qry_pullUser_viewEmployees.cfm"> --->



<DIV class="administrationEmployees">
	
	

	
	
	
	
		  
		  
			<TABLE class="table table-hover table-responsive table-striped">
			<thead class="thead-dark">
			
				<TR>
				<th scope="col">NAME</TH>
				<th scope="col">LOCATION DESCRIPTION</TH>
				<th scope="col">EMAIL</TH>
				<th scope="col" width="50PX"></TH>
				<TR>
				
			</thead>
			<tbody>
				<Tr>
				<CFOUTPUT QUERY="UnifiedEmployees">

	
								<tr>
								<TD>&nbsp;&nbsp;&nbsp;&nbsp;<a href="?action=viewUser&eid=#eid#">#UCASE(fullname)#</a></SPAN></TD>
								<TD>#ALTERNATEDEPTDESC#</TD>
								<TD>#UCASE(email)#</TD>
							    <TD width="50PX" ALIGN="cENTER">&nbsp;</TD>
								<TR>
	
								
				</CFOUTPUT>
			  </tbody>	
			<TR>
			</TABLE>
			
</DIV>
		
