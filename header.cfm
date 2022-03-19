
<CFIF ISDEFINED("session.employeeid") AND session.employeeID NEQ ''>

<!DOCTYPE html>
<html>
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600&family=Source+Sans+Pro:wght@900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
    <link rel="stylesheet" href="_css/layout2.css">


					
	<script>

		function showQuestions() {
		   document.getElementById('showQuestions').style.display = "block";
		   var passFormName = document.getElementById('newformaddquestion').value;
		   document.getElementById('question1').innerHTML = passFormName;
		   document.getElementById('question3').innerHTML = passFormName;
		   document.getElementById('question5').innerHTML = passFormName;
		   document.getElementById('question7').innerHTML = passFormName;
		   document.getElementById('question9').innerHTML = passFormName;
		   document.getElementById('question11').innerHTML = passFormName;
		   document.getElementById('question14').innerHTML = passFormName;
		   document.getElementById('question16').innerHTML = passFormName;
		   document.getElementById('question18').innerHTML = passFormName;
		   document.getElementById('question21').innerHTML = passFormName;
		   document.getElementById('question23').innerHTML = passFormName;
		   document.getElementById('question25').innerHTML = passFormName;
		   
		   
		}



		function displayAdminMenu() {
		   document.getElementById('menuSide_administration').style.width = "175px";
		   document.getElementById('adminMenuCollapse1').style.display = "block";
		   document.getElementById('adminMenuCollapse2').style.display = "block";
		   document.getElementById('adminMenuCollapse3').style.display = "block";
		   document.getElementById('adminMenuCollapse4').style.display = "block";
		   document.getElementById('adminMenuCollapse5').style.display = "block";
		   const menu = document.getElementById('adminMenuCollapse1');
				menu.style.opacity = '100';
		}

		function hideAdminMenu() {
			
			document.getElementById('menuSide_administration').style.width = "45px";
			document.getElementById('adminMenuCollapse1').style.display = "none";
			document.getElementById('adminMenuCollapse2').style.display = "none";
		   document.getElementById('adminMenuCollapse3').style.display = "none";
		   document.getElementById('adminMenuCollapse4').style.display = "none";
		   document.getElementById('adminMenuCollapse5').style.display = "none";
		   const menu = document.getElementById('adminMenuCollapse1');
				menu.style.opacity = '0';

		}

		function hideQuestions() {
		   document.getElementById('showQuestions').style.display = "none";
		        document.getElementById('Q1Check').style.display = "none";
				document.getElementById('Q2Check').style.display = "none";
				document.getElementById('Q3Check').style.display = "none";
				document.getElementById('Q4Check').style.display = "none";
				document.getElementById('Q5Check').style.display = "none";
				document.getElementById('Q6Check').style.display = "none";
				document.getElementById('Q7Check').style.display = "none";
				document.getElementById('Q8Check').style.display = "none";
				document.getElementById('Q9Check').style.display = "none";
				document.getElementById('Q10Check').style.display = "none";
		}

		function myFunction(chosen) {
 			 

			  if (chosen == "1"){

				document.getElementById('Q1Check').style.display = "block";
				document.getElementById('Q2Check').style.display = "none";
				document.getElementById('Q3Check').style.display = "none";
				document.getElementById('Q4Check').style.display = "none";
				document.getElementById('Q5Check').style.display = "none";
				document.getElementById('Q6Check').style.display = "none";
				document.getElementById('Q7Check').style.display = "none";
				document.getElementById('Q8Check').style.display = "none";
				document.getElementById('Q9Check').style.display = "none";
				document.getElementById('Q10Check').style.display = "none";
				
			  } else if (chosen == "2"){


				document.getElementById('Q1Check').style.display = "none";
				document.getElementById('Q2Check').style.display = "block";
				document.getElementById('Q3Check').style.display = "none";
				document.getElementById('Q4Check').style.display = "none";
				document.getElementById('Q5Check').style.display = "none";
				document.getElementById('Q6Check').style.display = "none";
				document.getElementById('Q7Check').style.display = "none";
				document.getElementById('Q8Check').style.display = "none";
				document.getElementById('Q9Check').style.display = "none";
				document.getElementById('Q10Check').style.display = "none";
				

			  } else if (chosen == "3"){	

				document.getElementById('Q1Check').style.display = "none";
				document.getElementById('Q2Check').style.display = "none";
				document.getElementById('Q3Check').style.display = "block";
				document.getElementById('Q4Check').style.display = "none";
				document.getElementById('Q5Check').style.display = "none";
				document.getElementById('Q6Check').style.display = "none";
				document.getElementById('Q7Check').style.display = "none";
				document.getElementById('Q8Check').style.display = "none";
				document.getElementById('Q9Check').style.display = "none";
				document.getElementById('Q10Check').style.display = "none";
			
			} else if (chosen == "4"){	

				document.getElementById('Q1Check').style.display = "none";
				document.getElementById('Q2Check').style.display = "none";
				document.getElementById('Q3Check').style.display = "none";
				document.getElementById('Q4Check').style.display = "block";
				document.getElementById('Q5Check').style.display = "none";
				document.getElementById('Q6Check').style.display = "none";
				document.getElementById('Q7Check').style.display = "none";
				document.getElementById('Q8Check').style.display = "none";
				document.getElementById('Q9Check').style.display = "none";
				document.getElementById('Q10Check').style.display = "none";

			} else if (chosen == "5"){	

				document.getElementById('Q1Check').style.display = "none";
				document.getElementById('Q2Check').style.display = "none";
				document.getElementById('Q3Check').style.display = "none";
				document.getElementById('Q4Check').style.display = "none";
				document.getElementById('Q5Check').style.display = "block";
				document.getElementById('Q6Check').style.display = "none";
				document.getElementById('Q7Check').style.display = "none";
				document.getElementById('Q8Check').style.display = "none";
				document.getElementById('Q9Check').style.display = "none";
				document.getElementById('Q10Check').style.display = "none";

			} else if (chosen == "6"){	

				document.getElementById('Q1Check').style.display = "none";
				document.getElementById('Q2Check').style.display = "none";
				document.getElementById('Q3Check').style.display = "none";
				document.getElementById('Q4Check').style.display = "none";
				document.getElementById('Q5Check').style.display = "none";
				document.getElementById('Q6Check').style.display = "block";
				document.getElementById('Q7Check').style.display = "none";
				document.getElementById('Q8Check').style.display = "none";
				document.getElementById('Q9Check').style.display = "none";
				document.getElementById('Q10Check').style.display = "none";

			} else if (chosen == "7"){	

				document.getElementById('Q1Check').style.display = "none";
				document.getElementById('Q2Check').style.display = "none";
				document.getElementById('Q3Check').style.display = "none";
				document.getElementById('Q4Check').style.display = "none";
				document.getElementById('Q5Check').style.display = "none";
				document.getElementById('Q6Check').style.display = "none";
				document.getElementById('Q7Check').style.display = "block";
				document.getElementById('Q8Check').style.display = "none";
				document.getElementById('Q9Check').style.display = "none";
				document.getElementById('Q10Check').style.display = "none";

			} else if (chosen == "8"){	

				document.getElementById('Q1Check').style.display = "none";
				document.getElementById('Q2Check').style.display = "none";
				document.getElementById('Q3Check').style.display = "none";
				document.getElementById('Q4Check').style.display = "none";
				document.getElementById('Q5Check').style.display = "none";
				document.getElementById('Q6Check').style.display = "none";
				document.getElementById('Q7Check').style.display = "none";
				document.getElementById('Q8Check').style.display = "block";
				document.getElementById('Q9Check').style.display = "none";
				document.getElementById('Q10Check').style.display = "none";

			} else if (chosen == "9"){	

				document.getElementById('Q1Check').style.display = "none";
				document.getElementById('Q2Check').style.display = "none";
				document.getElementById('Q3Check').style.display = "none";
				document.getElementById('Q4Check').style.display = "none";
				document.getElementById('Q5Check').style.display = "none";
				document.getElementById('Q6Check').style.display = "none";
				document.getElementById('Q7Check').style.display = "none";
				document.getElementById('Q8Check').style.display = "none";
				document.getElementById('Q9Check').style.display = "block";
				document.getElementById('Q10Check').style.display = "none";

			} else if (chosen == "10"){	
                
				document.getElementById('Q1Check').style.display = "none";
				document.getElementById('Q2Check').style.display = "none";
				document.getElementById('Q3Check').style.display = "none";
				document.getElementById('Q4Check').style.display = "none";
				document.getElementById('Q5Check').style.display = "none";
				document.getElementById('Q6Check').style.display = "none";
				document.getElementById('Q7Check').style.display = "none";
				document.getElementById('Q8Check').style.display = "none";
				document.getElementById('Q9Check').style.display = "none";
				document.getElementById('Q10Check').style.display = "block";

			  } else {

				

			 }
		}

			
	</script>
	
</head>

<!---- MAIN USER QUERY THAT DRIVES THE ENTIRE APPLICATION, PULLS FROM THE USEC DATABASE WHICH ALREADY HAS THE MUNIS INFO AND CAN BE UPDATED AT ANY TIME --->
	<CFINCLUDE TEMPLATE="_qry/_qry_pullUser_viewEmployees.cfm">


<!---
	THIS PULLS STRAIGHT FROM MUNIS, WAS SLOW AND INFLEXIBLE 
	<CFINCLUDE TEMPLATE="_qry/_qry_pullUser_getMunisInfo.cfm">
--->

<!--- RIGHT NOW THIS QUERY IS ONLY THE BASIS FOR PULLING REVIEW FORMS, TEMPLATES AND QUESTIONS, NOTHING SPECIFIC TO A PERSON YET --->
<cfinclude template="_qry/_qry_GetReviewQuestions.cfm">

<body>

	<!--- TEST CODE <CFIF ISDEFINED("session.useruuid") and session.useruuid NEQ ''><cfoutput>#session.useruuid#</cfoutput><CFELSE>IT DIDN'T WORK!</CFIF>--->

<CFELSE>

	<CFLOCATION URL="loginTEST.cfm?appid=7">

</CFIF>