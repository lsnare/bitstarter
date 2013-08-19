<?xml version = "1.0" encoding = "utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml-strict.dtd">

<!-- Lucian Snare
	JSP Lab (Lab 4) 
		4-19-11 -->

<html xmlns = "http:www.w3c.org/1999/xhtml">

<head> 

 <title> JSP Lab </title>

</head>

<body>
	<form name = "myForm" action = "return.jsp" method = "POST">
 	
	<table>

	 <tr> 
	  <td>
		Please enter your name <input type = "text" name = "userName"/>  
	  </td> 
	 </tr> 

	 <tr> 
	  <td>
	 	Please enter your university name <input type = "text" name = "univName"/>
	  </td>
	 </tr>
	   
	 <tr> 
          <td>
		Please enter your email <input type = "text" name = "email"/> 
	  </td> 
         </tr> 

	<tr> </tr>

	<tr> 
 	 <td> 
		Please select your class standing 
	 </td> 
	</tr>

	<% String[] years = {"Freshman", "Sophmore", "Junior", "Senior"}; %>
	<% for (int i = 0; i < years.length; i ++) { %>
	<% String yearVal = years[i]; %>

		<tr> 
		 <td> 
			<input type = "radio" name = "choices" value = yearVal/>
			<%= years[i] %> 
		 </td>
		</tr>

	<% } %>

	</table>


	<p>
		Please rate these music types in order of your preferences:
	</p>
	<p>
		Love it!
 	</p>

	<table>

	<% String[] music = {"Rock", "Punk", "Classical", "Hardcore", "Folk", "Alternative", "Country"}; %>
	<% for (int j = 0; j < music.length; j ++) { %>

		<tr> 
		 <td> 
			<input type = "checkbox" name = "loved"/>
			<%= music[j] %>
		 </td> 
		</tr>

	<% } %>

	</table>
	

	<p>
		Hate it!
 	</p>

	<table>

	<% for (int k = 0; k < music.length; k ++) { %>

		<tr> 
		 <td> 
			<input type = "checkbox" name = "hated" />
			<%= music[k] %> 
		 </td> 
		</tr>

	<% } %>

	</table>

	<input type = "submit" name = "sub" value = "Submit!" />

	</form>

</body>

</html>

