

<!--- Created 1/4/2022 MMcClellan --->

<!--- Pull List of Users from Clerk_Unified_Security Database --->



<!--- TEST CODE TO TRY GENERALIZING SQL QUERIES --->
<cfset DB = '[Clerk_Unified_Security].[dbo].[UnifiedUser]'>

<!---
<cfquery datasource="USEC" name="usertables">
	SELECT column_name as column_name
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_NAME = N'user'
</cfquery>
<cfdump var=#usertables#>
<cfset myList = ValueList(usertables.column_name)>
<cfoutput>#myList#</cfoutput>
--->


<cfquery datasource="USEC" name="UnifiedEmployees">
SELECT 
       UF.[uid]
      ,UF.[eid]
      ,UF.[username]
      ,UF.[lname]
      ,UF.[fname]
	  ,UF.[fname] + ' ' + [UF].[lname] AS fullname
	  ,supervisorUser.[username] as supervisorUserName
	  ,managerUser.[username] as managerUserName
      ,UF.[email]
      ,UF.[deptID]
      ,UF.[supervisorID]
      ,UF.[lastMunisImport_Date]
      ,UF.[Create_Date]
      ,UF.[End_Date]
	  ,UF.[jobTitleID]
	  ,UF.[jobTitleMunisDesc]
	  ,UF.ALTERNATEDEPTDESC
	  ,UFA.ManagerID
	  ,UFA.orglevel
	  ,UFA.hiredate
	  ,UFA.hphonenumber
	  ,UFA.cphonenumber
	  ,CASE 
			WHEN UFA.[orgLevel] = '0' then 'Executive'
			WHEN UFA.[orgLevel] = '1' then 'Executive'
			WHEN UFA.[orgLevel] = '2' then 'Department Head'
			WHEN UFA.[orgLevel] = '3' then 'Supervisor'
			WHEN UFA.[orgLevel] = '4' then 'Supervisor'
			WHEN UFA.[orgLevel] = '5' then 'Employee'
			ELSE '?' END as OrgDescription
  FROM [Clerk_Unified_Security].[dbo].[UnifiedUser] UF
  LEFT OUTER JOiN [UnifiedUserAdvanced] ufa ON UF.EID = UFA.EID
  LEFT OUTER JOIN [UnifiedUser] as supervisorUser on UF.supervisorID = supervisorUser.eid
  LEFT OUTER JOIN [UnifiedUser] as managerUser on UFA.managerID = managerUser.eid
  where 0=0 
  <CFIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'drid') and url.drID NEQ ''>
				
				AND UF.eid = <cfqueryparam value="#url.DRid#" cfsqltype="cf_sql_integer">
			
			<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'mgrid') AND url.mgrID NEQ '' >
				
				AND UF.eid = <cfqueryparam value="#url.mgrid#" cfsqltype="cf_sql_integer">
				
			<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'eid') and url.eID NEQ ''>
				
			
				AND UF.eid = <cfqueryparam value="#url.eid#" cfsqltype="cf_sql_integer">

			<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'editEmployee' AND structkeyexists(url, 'eid') and url.eID NEQ ''>	

				AND UF.eid = <cfqueryparam value="#url.eid#" cfsqltype="cf_sql_integer">

			<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewEmployee' AND structkeyexists(url, 'eid') and url.eID NEQ ''>	

				AND UF.eid = <cfqueryparam value="#url.eid#" cfsqltype="cf_sql_integer">	

			<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'companyInfo' or structkeyexists(url, 'action') and url.action EQ 'employees'>


			
			<CFELSE>

				AND UF.eid = <cfqueryparam value="#session.employeeid#" cfsqltype="cf_sql_integer">
				
				
			</CFIF>

  order by fname, lname asc
</cfquery>



<cfquery datasource="USEC" name="employeeCount">
	
		
		SELECT 
       UF.[uid]
      ,UF.[eid]
      ,UF.[username]
      ,UF.[lname]
      ,UF.[fname]
	  ,UF.[fname] + ' ' + [UF].[lname] AS fullname
	  ,supervisorUser.[username] as supervisorUserName
	  
      ,UF.[email]
      ,UF.[deptID]
      ,UF.[supervisorID]
      ,UF.[lastMunisImport_Date]
      ,UF.[Create_Date]
      ,UF.[End_Date]
	  ,UF.[jobTitleID]
	  ,UF.[jobTitleMunisDesc]
	  ,UF.ALTERNATEDEPTDESC
	  ,UFA.ManagerID
	  ,UFA.orglevel
	  ,CASE 
			WHEN UFA.[orgLevel] = '0' then 'Executive'
			WHEN UFA.[orgLevel] = '1' then 'Executive'
			WHEN UFA.[orgLevel] = '2' then 'Department Head'
			WHEN UFA.[orgLevel] = '3' then 'Supervisor'
			WHEN UFA.[orgLevel] = '4' then 'Supervisor'
			WHEN UFA.[orgLevel] = '5' then 'Employee'
			ELSE '?' END as OrgDescription
  FROM [Clerk_Unified_Security].[dbo].[UnifiedUser] UF
  LEFT OUTER JOiN [UnifiedUserAdvanced] ufa ON UF.EID = UFA.EID
  LEFT OUTER JOIN [UnifiedUser] as supervisorUser on UF.supervisorID = supervisorUser.eid
  
  where 0=0 
	</cfquery>

    <!---<cfquery datasource="USEC" name="viewEmployees">
	
		SELECT 
		   [user].[eid]
		  ,[user].[username]
		  ,supervisorUser.[username] as supervisorUserName
		  ,managerUser.[username] as managerUserName
		  ,[user].[email]
		  ,[user].[fname]
		  ,[user].[lname]
		  ,[user].[fname] + ' ' + [user].[lname] AS fullname
		  ,[user].[deptID]
		  ,[user].[supervisorID]
		  ,[user].[ManagerID]
		  ,[user].[Create_Date]
		  ,[user].[End_Date]
		  ,[user].[orgLevel]
		  ,CASE 
			WHEN [user].[orgLevel] = '0' then 'Executive'
			WHEN [user].[orgLevel] = '1' then 'Executive'
			WHEN [user].[orgLevel] = '2' then 'Department Head'
			WHEN [user].[orgLevel] = '3' then 'Supervisor'
			WHEN [user].[orgLevel] = '4' then 'Supervisor'
			WHEN [user].[orgLevel] = '5' then 'Employee'
			ELSE '?' END as OrgDescription
			
		  ,d.[deptdesc]
		  ,[user].[specialCharacter]
			FROM #DB#
			JOIN departments D on [user].deptid = d.deptID
			LEFT OUTER JOIN [user] as supervisorUser on [user].supervisorID = supervisorUser.eid
			LEFT OUTER JOIN [user] as managerUser on [user].managerID = managerUser.eid
			WHERE 0=0
			<CFIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'drid') and url.drID NEQ ''>
				
				AND [user].eid = <cfqueryparam value="#url.DRid#" cfsqltype="cf_sql_integer">
			
			<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'mgrid') AND url.mgrID NEQ '' >
				
				AND [user].eid = <cfqueryparam value="#url.mgrid#" cfsqltype="cf_sql_integer">
				
			<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'eid') and url.eID NEQ ''>
			
				AND [user].eid = <cfqueryparam value="#url.eid#" cfsqltype="cf_sql_integer">

			<CFELSE>
				
				
					 AND [user].eid = <cfqueryparam value="#session.employeeid#" cfsqltype="cf_sql_integer">
			    
				
			</CFIF>
				
			order by ORGLEVEL, EID
	</cfquery>--->
	
	<cfquery datasource="USEC" name="viewEmployeeDetail">


    SELECT 
       UF.[uid]
      ,UF.[eid]
      ,UF.[username]
      ,UF.[lname]
      ,UF.[fname]
	  ,UF.[fname] + ' ' + [UF].[lname] AS fullname
	  ,supervisorUser.[username] as supervisorUserName
	  ,managerUser.[username] as managerUserName
	  ,[supervisorUser].[fname] as sfname
	  ,[supervisorUser].[lname] as slname
      ,UF.[email]
      ,UF.[deptID]
      ,UF.[supervisorID]
      ,UF.[lastMunisImport_Date]
      ,UF.[Create_Date]
      ,UF.[End_Date]
	  ,UF.[jobTitleID]
	  ,UF.[jobTitleMunisDesc]
	  ,UF.ALTERNATEDEPTDESC
	  ,UFA.ManagerID
	  ,UFA.orglevel
	  ,CASE 
			WHEN UFA.[orgLevel] = '0' then 'Executive'
			WHEN UFA.[orgLevel] = '1' then 'Executive'
			WHEN UFA.[orgLevel] = '2' then 'Department Head'
			WHEN UFA.[orgLevel] = '3' then 'Supervisor'
			WHEN UFA.[orgLevel] = '4' then 'Supervisor'
			WHEN UFA.[orgLevel] = '5' then 'Employee'
			ELSE '?' END as OrgDescription
  FROM [Clerk_Unified_Security].[dbo].[UnifiedUser] UF
  LEFT OUTER JOiN [UnifiedUserAdvanced] ufa ON UF.EID = UFA.EID
  LEFT OUTER JOIN [UnifiedUser] as supervisorUser on UF.supervisorID = supervisorUser.eid
  LEFT OUTER JOIN [UnifiedUser] as managerUser on UFA.managerID = managerUser.eid
			WHERE 0=0
			
			
			<CFIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'drid') and url.drID NEQ ''>
				
				AND [UF].eid = <cfqueryparam value="#url.DRid#" cfsqltype="cf_sql_integer">
			
			<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'mgrid') AND url.mgrID NEQ '' >
				
				AND [UF].eid = <cfqueryparam value="#url.mgrid#" cfsqltype="cf_sql_integer">
				
			<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'eid') and url.eID NEQ ''>
			
				AND [UF].eid = <cfqueryparam value="#url.eid#" cfsqltype="cf_sql_integer">

			<CFELSE>
				
				
					AND [UF].eid = <cfqueryparam value="#session.employeeid#" cfsqltype="cf_sql_integer">
			    
				
			</CFIF>
			
			
			
			
	</cfquery>
	
	
		<cfquery datasource="USEC" name="viewEmployeeDR">
   SELECT 
       UF.[uid]
      ,UF.[eid]
      ,UF.[username]
      ,UF.[lname]
      ,UF.[fname]
	  ,UF.[fname] + ' ' + [UF].[lname] AS fullname
	  ,supervisorUser.[username] as supervisorUserName
	  ,[supervisorUser].[fname] as sfname
	  ,[supervisorUser].[lname] as slname
      ,UF.[email]
      ,UF.[deptID]
      ,UF.[supervisorID]
      ,UF.[lastMunisImport_Date]
      ,UF.[Create_Date]
      ,UF.[End_Date]
	  ,UF.[jobTitleID]
	  ,UF.[jobTitleMunisDesc]
	  ,UF.ALTERNATEDEPTDESC
	  ,UFA.ManagerID
	  ,UFA.orglevel
	  ,CASE 
			WHEN UFA.[orgLevel] = '0' then 'Executive'
			WHEN UFA.[orgLevel] = '1' then 'Executive'
			WHEN UFA.[orgLevel] = '2' then 'Department Head'
			WHEN UFA.[orgLevel] = '3' then 'Supervisor'
			WHEN UFA.[orgLevel] = '4' then 'Supervisor'
			WHEN UFA.[orgLevel] = '5' then 'Employee'
			ELSE '?' END as OrgDescription
  FROM [Clerk_Unified_Security].[dbo].[UnifiedUser] UF
  LEFT OUTER JOiN [UnifiedUserAdvanced] ufa ON UF.EID = UFA.EID
  LEFT OUTER JOIN [UnifiedUser] as supervisorUser on UF.supervisorID = supervisorUser.eid

			WHERE 0=0
			
				
			
			<CFIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'drid') and url.drID NEQ ''>
				
				AND  [UF].supervisorID = <cfqueryparam value="#url.drID#" cfsqltype="cf_sql_integer">
			
			<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'mgrid') AND url.mgrID NEQ '' >
				
				AND  [UF].supervisorID = <cfqueryparam value="#url.mgrID#" cfsqltype="cf_sql_integer">
				
			<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'eid') and url.eID NEQ ''>
			
				AND  [UF].supervisorID = <cfqueryparam value="#url.eid#" cfsqltype="cf_sql_integer">

			<CFELSE>
				
				
					AND  [UF].supervisorID = <cfqueryparam value="#session.employeeid#" cfsqltype="cf_sql_integer">
			    
				
			</CFIF>

		
	         </cfquery>
	
	
	          <!---<cfdump var="#viewEmployeeDR#"> --->
	
	<!--- <cfquery name="getMunisInfo" datasource="munis1235" maxrows="1">

	SELECT *
	FROM dbo.pr_employee_mast
	where 0=0
		
	
		<CFIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'drid') and url.drID NEQ ''>
				
				and pr_employee_mast.a_employee_number = '#url.drid#'
				
		<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'mgrid') and url.mgrID NEQ ''>
		
				and pr_employee_mast.a_employee_number = '#url.mgrid#'
				
		<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'eid') and url.eID NEQ ''>		
		
				and pr_employee_mast.a_employee_number = '#url.eid#'
		
		<CFELSE>
		
				and pr_employee_mast.a_employee_number = '#session.employeeid#'
			
		</CFIF>

		
		
	</cfquery>--->
	   
	 <!--- <cfdump var="#getMunisInfo#"> --->






<CFIF #UnifiedEmployees.RecordCount# GT 0>
	<!--- LIST USERS IF AVAILABLE --->
<CFELSE>
	NO RECORDS CURRENTLY EXIST IN THIS DATABASE, WOULD YOU LIKE TO CREATE ONE?<BR>
	<A HREF="addnewUser.cfm">CLICK HERE</A>
</CFIF>