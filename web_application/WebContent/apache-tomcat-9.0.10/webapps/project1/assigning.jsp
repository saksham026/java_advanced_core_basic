<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function assgn()
{
	var n1=document.getElementById("ques").value;
	var n3=document.getElementById("unit").value;
	
	
	var n2=document.getElementById("div3");
	n2.innerHTML=""
	var i=1;
	for(i=1;i<=n1;i++)
	{
		element=document.createElement("input");
		element.setAttribute("type","text");
		element.setAttribute("name","t2");
		n2.appendChild(element);
		//documnet.writeln();
		element1=document.createElement("br");
		n2.appendChild(element1);

		element2=document.createElement("br");
		n2.appendChild(element2);
		

	}
}

</script>
<center><image src="Logo.png" width=1000 height=200></image></center>
<body>
<form method="POST" action="table_make.jsp">
<pre>
Academic year:<input type="text" placeholder="Enter academic year" name="year" value=""/>

subject:<input type="text" placeholder="Enter name of subject" name="subject" value=""/>

check what all course includes:
<input type = "checkbox" name = "cb1" checked = "checked" /> Exam

<input type = "checkbox" name = "cb2"  /> Practical

<input type = "checkbox" name = "cb3" checked = "checked" /> Assessment

<input type = "checkbox" name = "cb4" checked = "checked" /> Unit Tests

select operation:
<select name="task">
<option value="add">add into database</option>
<option value="delete">delete from database</option>
<option value="modify">modify unit tests</option>
</select>

number of unit tests:<input type="text" placeholder="Enter number of Unit Tests" name="ut" value="" id="unit"/>

number of questions:<input type="textbox" placeholder="Enter number of questions in Unit Tests"  name="ques" id="ques">
<input type="button" value="get marks field" onclick="assgn()">
<div id="div3">
</div>

values of:
L<input type="text" placeholder="Enter value of l" name="l" value=""/>

M<input type="text" placeholder="Enter value of m" name="m" value=""/>

H<input type="text" placeholder="Enter value of h" name="h" value=""/>

<input type="hidden" placeholder="Enter multiplying factor" name="mf" value=""/>

select operation:
<select name="atask">
<option value="add">add in database</option>
<option value="modify">modify</option>
</select>

<input type="submit" value="submit">
</pre>
</form>
<center><b>Department of Computer Engineering,BV(DU)COEP</b></center>
</html>