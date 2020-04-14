<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
     <%@page import="java.sql.*,java.io.*,java.util.*,model.Database,org.apache.poi.ss.usermodel.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String fileName=request.getParameter("a");
String sub=request.getParameter("sub");
String year=request.getParameter("year");

Vector cellVectorHolder = new Vector();
int noOfColumns=1;

try {
	
        FileInputStream myInput = new FileInputStream(fileName);
       // System.out.println("Input:"+myInput);
        Workbook wb = WorkbookFactory.create(myInput);

        Sheet sheet = wb.getSheetAt(0);

        noOfColumns = sheet.getRow(0).getPhysicalNumberOfCells();
        System.out.println("col:"+noOfColumns);
        
        Iterator rowIter = sheet.rowIterator();

        while (rowIter.hasNext())
        {
                Row myRow = (Row) rowIter.next();
                Iterator cellIter = myRow.cellIterator();
                Vector cellStoreVector = new Vector();
                while (cellIter.hasNext()) 
                {
                        Cell myCell = (Cell) cellIter.next();
                        cellStoreVector.addElement(myCell);
                }
                cellVectorHolder.addElement(cellStoreVector);
        }
} catch (Exception e) {
        e.printStackTrace();
}
for (int i = 1; i < cellVectorHolder.size(); i++)
{		//not reading column header
    Vector cellStoreVector = (Vector) cellVectorHolder.elementAt(i);
    for (int j = 0; j < cellStoreVector.size(); j++) 
    {
            Cell myCell = (Cell) cellStoreVector.elementAt(j);
            String stringCellValue = myCell.toString();
            System.out.print(stringCellValue + "\t");
    }
    System.out.println();
}    
    try
    {
    Connection con=Database.dataConnection();
    Statement stat=con.createStatement();
    
    Statement stmt=con.createStatement();

    int no=1,l=1;
    String str2="select count(*) as Number from information_schema.columns where table_name='"+year+"_"+sub+"_unit'";
    ResultSet rs1=stmt.executeQuery(str2);
    while(rs1.next())
    {
    	no=rs1.getInt(1);
    	
    }
    
	int ut=1,nq=1;
	
	String str1="select ut,nq from "+year+"_"+sub+"_unit limit 1";
	ResultSet rs=stmt.executeQuery(str1);
	while(rs.next())
	{
		ut=rs.getInt(1);
		nq=rs.getInt(2);
		
	}
    
    no=no-2;
    int h=0,j=0;
	
    String str="update "+year+"_"+sub+"_unit set ";
    //while(l<no && l<noOfColumns)
    //{
    		
    	
    //}
    //str+=") values(";
    System.out.println(str);
    
    l=1;
    for (int i = 1; i < cellVectorHolder.size(); i++)
    {		//not reading column header
       		   Vector cellStoreVector = (Vector) cellVectorHolder.elementAt(i);
               Cell myCell = (Cell) cellStoreVector.elementAt(0);
               String stringCellValue = myCell.toString();
                //System.out.print(stringCellValue + "\t");
               
               double prn=Double.parseDouble(stringCellValue);
               //System.out.print(stringCellValue + "\t");
              //int prn1=399;
               
               System.out.println(prn);
               int prn1;
               prn1=(int)prn;
               
               
               
               l=1;
               while(l<no && l<noOfColumns)
               {
            	   
            		if(j<nq)
            		{
            			j++;
            		}
            		else
            		{
            			j=1;
            			h++;
            		}
            
            	str+="qm"+h+""+j+"=";	//**to change
            	
            	   Cell myCell1 = (Cell) cellStoreVector.elementAt(l);
                   String stringCellValue1 = myCell1.toString();
             	   if(stringCellValue1.equals("na"))
             	   {
             		   stringCellValue1="-1";
             	   }
                   
               	str+="'"+stringCellValue1+"'";
               	if(l!=(no-1)&&l!=(noOfColumns-1))
               	{
               		str+=",";
               	   System.out.println(str);
               	}
               	l+=1;
               }
               str+="where prn="+prn+"";
    		   System.out.println(str);
                          
               
               int k=stat.executeUpdate(str);
               str="update "+year+"_"+sub+"_unit set ";
               //int k=stat.executeUpdate("insert into "+year+"_"+sub+"_assessment values('"+stringCellValue+"','"+stringCellValue1+"','"+stringCellValue2+"','"+stringCellValue3+"','"+stringCellValue4+"','"+stringCellValue5+"','"+stringCellValue6+"')");
               h=0;
               j=0;       
               
	}
    response.sendRedirect("ut.jsp?a="+fileName+"&sub="+sub+"&year="+year);
    }catch(Exception e)
    {
    	System.out.println(e);
    }
%>
</body>
</html>