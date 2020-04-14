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
    
    Connection con1=Database.dataConnection();
    Statement stmt=con1.createStatement();
    System.out.println(cellVectorHolder.size());
  
    for (int i = 1; i < cellVectorHolder.size(); i++) {		//not reading column header
        Vector cellStoreVector = (Vector) cellVectorHolder.elementAt(i);
               Cell myCell = (Cell) cellStoreVector.elementAt(0);
               String stringCellValue = myCell.toString();
               System.out.println("a"+stringCellValue);
   			
               float prn=Float.parseFloat(stringCellValue);
                //System.out.print(stringCellValue + "\t");
               //int prn1=399;
                
                System.out.println(prn);
                int prn1;
                prn1=(int)prn;
                ArrayList<String> tables = new ArrayList<String>();


                String all="show tables";
                ResultSet rs12=stmt.executeQuery(all);
                while(rs12.next())
                {
                	tables.add(rs12.getString(1));
                	
                }
                
                int t=1;
                String a="select * from "+year+"_prn where prn="+prn1;
            	ResultSet rs13=stmt.executeQuery(a);
            	while(rs13.next())
            	{
            		t=0;
            	}
                
            	if(t==1)
            	{
                String str2="select * from "+year+"_subject";
                System.out.println(str2);
    			
                ResultSet rs1=stmt.executeQuery(str2);
    			
    			while(rs1.next())
    			{
    				String sub1=rs1.getString(1);
    				String c1=year+"_"+sub1+"_co";
    				String c2=year+"_"+sub1+"_exam";
    				String c3=year+"_"+sub1+"_assessment";
    				String c4=year+"_"+sub1+"_practical";
    				String c5=year+"_"+sub1+"_unit";

    				int flag1=1;
    				int flag2=1;
    				int flag3=1;
    				int flag4=1;
    				int flag5=1;
    				for(int p=0;p<tables.size();p++)
    				{
    					if(tables.get(p).equalsIgnoreCase(c1))
    					{
    						flag1=0;
    					}
    					if(tables.get(p).equalsIgnoreCase(c2))
    					{
    						flag2=0;
    					}if(tables.get(p).equalsIgnoreCase(c3))
    					{
    						flag3=0;
    					}if(tables.get(p).equalsIgnoreCase(c4))
    					{
    						flag4=0;
    					}if(tables.get(p).equalsIgnoreCase(c5))
    					{
    						flag5=0;
    					}
    				}
    				
    			if(flag5==0)
    			{
    				String str9="insert into "+year+"_"+sub1+"_unit(prn) values(?)";
    				PreparedStatement ps1=con.prepareStatement(str9);
    				ps1.setDouble(1, Double.parseDouble(stringCellValue));
    				System.out.println(str9);
    				boolean b1=ps1.execute();
    		    	
    			}
    			
    			if(flag2==0)
    			{
    				String str3="insert into "+year+"_"+sub1+"_exam(prn) values(?)";
    				PreparedStatement ps2=con.prepareStatement(str3);
    				ps2.setDouble(1, Double.parseDouble(stringCellValue));
    				boolean b1=ps2.execute();
    		    	
    			}
    			
    			if(flag4==0)
    			{
    				String str4="insert into "+year+"_"+sub1+"_practical(prn) values(?)";
    				PreparedStatement ps3=con.prepareStatement(str4);
    				ps3.setDouble(1, Double.parseDouble(stringCellValue));
    				boolean b1=ps3.execute();
    		    	
    			}
    			
    			if(flag3==0)
    			{
    				String str5="insert into "+year+"_"+sub1+"_assessment(prn) values(?)";
    				PreparedStatement ps4=con.prepareStatement(str5);
    				ps4.setDouble(1, Double.parseDouble(stringCellValue));
    				boolean b1=ps4.execute();
    		    	
    			}
    	
   				}
                
    			String s="insert into "+year+"_prn values('"+stringCellValue+"')";
    			System.out.println(s);
               int k=stat.executeUpdate(s);
            	}
	}
    response.sendRedirect("gfm.jsp?sub="+sub+"&year="+year+"");
    }catch(Exception e)
    {
    	System.out.println(e);
    }
%>
</body>
</html>