<cfinclude template="header.cfm">

<div class="wrapper">

	<DIV class="header">
	
		<cfinclude template="headerbar.cfm">
	
	</div>
	
	<DIV class="navbar">
					
		<cfinclude template="navbar.cfm">
	
	</div>
	
	<DIV class="menu">
		
		
		    <!--- MODIFY SIDEBAR BASED ON LANDING PAGE, MODIFY HERE TO CHANGE DEFAULT BEHAVIOR ( SIDEBAR VISIBLE )--->
			
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
		
		
	
	
	</div>


	<DIV class="contentLeft">
	
		<!--- PRIMARY MAIN CONTENT ROUTING --->
			<CFIF ISDEFINED("url.action") and url.action EQ 'reviewtemplates'>
				<DIV class="mainContentLeft">
				<H4>REVIEW TEMPLATES</H4>
				<bR>
				<cfinclude template="administration/reviewtemplates.cfm">
				</DIV>
			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'reviewforms'>
				<DIV class="mainContentLeft">
				<H4>REVIEW FORMS</H4>
				<bR>
				<cfinclude template="administration/reviewforms.cfm">
				</DIV>	
			
			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'createnewForm'>
				<DIV class="mainContentLeft_ALTERNATE">
				<H4>REVIEW FORMS</H4>
				<bR>
				<cfinclude template="administration/createNewForm.cfm">
				</DIV>	

			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'editreviewForm'>
				<DIV class="mainContentLeft_ALTERNATE">
				
				
				<cfinclude template="administration/createNewForm.cfm">
				</DIV>	

			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'editEmployee'>
				<DIV class="mainContentLeft">
					<cfinclude template="editemployee.cfm">
				</DIV>
			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'viewEmployee'>
				<DIV class="mainContentLeft">
				EMPLOYEE DETAILS
				<bR>
				THIS PAGE IS TIED UP DIRECTLY WITH MUNIS SO THE INFO REMAINS CURRENT
				<BR>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</DIV>
			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'forms'>
				<DIV class="mainContentLeft">
					<cfinclude template="showreviews.cfm">
				</DIV>
			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'start-review' and url.do EQ 'stepone'>
				<DIV class="mainContentLeft_modified">
					<cfinclude template="createreviewStepOne.cfm">
				</DIV>
			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'start-review' and url.do EQ 'steptwo'>
				
				<DIV class="mainContentLeft_modified">
					<cfinclude template="createreviewStepOne.cfm">
				</DIV>
			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'start-review' and url.do EQ 'stepthree'>
				<DIV class="mainContentLeft_reviewStepThree">
					<cfinclude template="createreviewStepOne.cfm">
				</DIV>				
			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'createReview'>
				<DIV class="mainContentLeft">
				>> SHOW MODAL FOR REVIEW TEMPLATE <<
				<bR>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</DIV>
			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'userlogs'>
				<DIV class="mainContentLeft">
				>> USER LOGS <<
				<bR>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</DIV>
			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'editemployee'>
				<DIV class="mainContentLeft">
				>> EDIT EMPLOYEE <<
				<bR>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</DIV>
			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'companyinfo'>
					<DIV class="mainContentLeft">
				NASSAU COUNTY CLERK OF COURT
				<bR>
				<cfinclude template="administration/companyinfo.cfm">
				</DIV>
			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'employeedetails'>
				<DIV class="mainContentLeft">
				>> EMPLOYEE DETAILS <<
				<bR>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</DIV>
			<CFELSEIF ISDEFINED("url.action") and url.action EQ 'administration'>
				<DIV class="mainContentLeft">
				NASSAU COUNTY CLERK OF COURT
				<bR>
				<cfinclude template="administration/default.cfm">
				</DIV>
		    <CFELSEIF ISDEFINED("url.action") and url.action EQ 'employees'>
				<DIV class="mainContentLeft">
				>> EMPLOYEES <<
				<bR>
				<cfinclude template="administration/viewEmployees.cfm">
				</DIV>
			
			
			<CFELSE>


				
				<DIV class="mainContentLeft">
					<cfinclude template="dashboard.cfm">
				</DIV>
				
			</CFIF>
								
	
	
		<CFIF ISDEFINED("url.action") and url.action EQ 'createnewForm'>
			
			
			<DIV class="mainContentMiddle">

				<div id="showAttachedQuestions">
				<cfinclude template="sidebarcontent/administration/mainContentMiddle_DisplayQuestions.cfm">
			    </div>

			</DIV>

		<CFELSEIF ISDEFINED("url.action") and url.action EQ 'editreviewForm'>	

			<DIV class="mainContentMiddle">

				<div id="showAttachedQuestions">
				<cfinclude template="sidebarcontent/administration/mainContentMiddle_DisplayQuestions.cfm">
			    </div>

			</DIV>


		<CFELSE>
			
			

		</CFIF>
		
	
	
		
		<!--- CONTROL FAR RIGHT SIDE DIV, NOT SHOWN ON PAGES BELOW --->
		<CFIF ISDEFINED("url.action") and url.action EQ 'reviews'>
		
		<CFELSEIF ISDEFINED("url.action") and url.action EQ 'reviewtemplates'>
		
		<CFELSEIF ISDEFINED("url.action") and url.action EQ 'reviewforms'>

		<CFELSEIF ISDEFINED("url.action") and url.action EQ 'editReviewForm'>

			
			
			<div class="mainContentRight">

					
				<div id="showQuestions">
				<cfinclude template="sidebarcontent/administration/mainContentRight_createnewform.cfm">
			    </div>
			</div>	

		<CFELSEIF ISDEFINED("url.action") and url.action EQ 'createnewform'>

			
			
			<div class="mainContentRight">

					
				<div id="showQuestions">
				<cfinclude template="sidebarcontent/administration/mainContentRight_createnewform.cfm">
			    </div>
			</div>
		
        <CFELSEIF ISDEFINED("url.action") and url.action EQ 'editEmployee'>
		
		<CFELSEIF ISDEFINED("url.action") and url.action EQ 'viewEmployee'>
		
		<CFELSEIF ISDEFINED("url.action") and url.action EQ 'forms'>


		
		<CFELSEIF ISDEFINED("url.action") and url.action EQ 'createReview'>
		
		<CFELSEIF ISDEFINED("url.action") and url.action EQ 'companyinfo'>
		
		<CFELSEIF ISDEFINED("url.action") and url.action EQ 'administration'>
		
		<CFELSEIF ISDEFINED("url.action") and url.action EQ 'employees'>
		
		<CFELSEIF ISDEFINED("url.action") and url.action EQ 'userlogs'>
		
		<CFELSEIF ISDEFINED("url.action") and url.action EQ 'start-review' and url.do NEQ ''>
		
				<CFIF ISDEFINED("url.action") and url.action EQ 'start-review' and url.do EQ 'stepone'>
		
				<CFELSEIF ISDEFINED("url.action") and url.action EQ 'start-review' and url.do EQ 'steptwo'>
				
				<CFELSEIF ISDEFINED("url.action") and url.action EQ 'start-review' and url.do EQ 'stepthree'>
					
					<!--- SHOW A SIDE BAR FOR STEP THREE --->
					<div class="mainContentRight_reviewStepThree">
				
						<cfinclude template="sidebarcontent/mainContentRight_reviewStepThree.cfm">
					
					</div>
				<CFELSE>
				
				</CFIF>

		<CFELSE>
		
				<div class="mainContentRight">
			
					<cfinclude template="sidebarcontent/mainContentRight_dashboard.cfm">
				
				</div>

		
		</CFIF>		
		
	</div>
	
		<DIV class="footer">
			<cfinclude template="footer.cfm">
	    </DIV>

</DIV>


</body>
</html>