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

try {
        FileInputStream myInput = new FileInputStream(fileName);
       // System.out.println("Input:"+myInput);
        Workbook wb = WorkbookFactory.create(myInput);

        Sheet sheet = wb.getSheetAt(0);

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
    for (int i = 1; i < cellVectorHolder.size(); i++) {		//not reading column header
        Vector cellStoreVector = (Vector) cellVectorHolder.elementAt(i);
               Cell myCell = (Cell) cellStoreVector.elementAt(0);
               String stringCellValue = myCell.toString();
               
               double prn=Double.parseDouble(stringCellValue);
               //System.out.print(stringCellValue + "\t");
              //int prn1=399;
               
               System.out.println(prn);
               int prn1;
               prn1=(int)prn;
               
                //System.out.print(stringCellValue + "\t");
               Cell myCell1 = (Cell) cellStoreVector.elementAt(1);
               String stringCellValue1 = myCell1.toString();
               if(stringCellValue1.equals("na"))
         	   {
         		   stringCellValue1="-1";
         	   }
               
               Cell myCell2 = (Cell) cellStoreVector.elementAt(2);
               String stringCellValue2 = myCell2.toString();
               System.out.println(stringCellValue2);
               if(stringCellValue2.equals("na"))
         	   {
         		   stringCellValue2="-1";
         	   }
               
               Cell myCell3 = (Cell) cellStoreVector.elementAt(3);
               String stringCellValue3 = myCell3.toString();
               if(stringCellValue3.equals("na"))
         	   {
         		   stringCellValue3="-1";
         	   }
               
               Cell myCell4 = (Cell) cellStoreVector.elementAt(4);
               String stringCellValue4 = myCell4.toString();
               if(stringCellValue4.equals("na"))
         	   {
         		   stringCellValue4="-1";
         	   }
               
               Cell myCell5 = (Cell) cellStoreVector.elementAt(5);
               String stringCellValue5 = myCell5.toString();
               if(stringCellValue5.equals("na"))
         	   {
         		   stringCellValue5="-1";
         	   }
               
               Cell myCell6 = (Cell) cellStoreVector.elementAt(6);
               String stringCellValue6 = myCell6.toString();
               if(stringCellValue6.equals("na"))
         	   {
         		   stringCellValue6="-1";
         	   }
               
               String str="update "+year+"_"+sub+"_exam set e1='"+stringCellValue1+"',e2='"+stringCellValue2+"',e3='"+stringCellValue3+"',e4='"+stringCellValue4+"',e5='"+stringCellValue5+"',e6='"+stringCellValue6+"' where prn="+prn+"";
               System.out.println(str);
               
               int k=stat.executeUpdate(str);
               //int k=stat.executeUpdate("insert into "+year+"_"+sub+"_assessment values('"+stringCellValue+"','"+stringCellValue1+"','"+stringCellValue2+"','"+stringCellValue3+"','"+stringCellValue4+"','"+stringCellValue5+"','"+stringCellValue6+"')");
               str="update "+year+"_"+sub+"_assessment set ";
                             
               
	}
    response.sendRedirect("exam.jsp?a="+fileName+"&sub="+sub+"&year="+year);
    }catch(Exception e)
    {
    	System.out.println(e);
    }
%>
</body>
</html>