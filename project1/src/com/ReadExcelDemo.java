package com;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Iterator;
import java.util.Vector;
 
import org.apache.poi.xssf.usermodel.XSSFWorkbookFactory;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
 
 
public class ReadExcelDemo{
 
        public static void main(String[] args) {
 
             //   String fileName = "C:\\excelFile.xls";
            //  String fileName ="C:/cyril/For Rajkumar//expense.xls";
        	
            String fileName ="e:/training.xlsx";
                Vector dataHolder = ReadCSV(fileName);
                printCellDataToConsole(dataHolder);
        }
 
        public static Vector ReadCSV(String fileName) {
                Vector cellVectorHolder = new Vector();
 
                try {
                        FileInputStream myInput = new FileInputStream(fileName);
                       // System.out.println("Input:"+myInput);
                        Workbook wb = WorkbookFactory.create(myInput);
 
                        Sheet sheet = wb.getSheetAt(0);
 
                        Iterator rowIter = sheet.rowIterator();
 
                        while (rowIter.hasNext()) {
                                Row myRow = (Row) rowIter.next();
                                Iterator cellIter = myRow.cellIterator();
                                Vector cellStoreVector = new Vector();
                                while (cellIter.hasNext()) {
                                        Cell myCell = (Cell) cellIter.next();
                                        cellStoreVector.addElement(myCell);
                                }
                                cellVectorHolder.addElement(cellStoreVector);
                        }
                } catch (Exception e) {
                        e.printStackTrace();
                }
                return cellVectorHolder;
        }
 
        private static void printCellDataToConsole(Vector dataHolder) {
 
                for (int i = 1; i < dataHolder.size(); i++) {		//not reading column header
                        Vector cellStoreVector = (Vector) dataHolder.elementAt(i);
                        for (int j = 0; j < cellStoreVector.size(); j++) {
                                Cell myCell = (Cell) cellStoreVector.elementAt(j);
                                String stringCellValue = myCell.toString();
                                System.out.print(stringCellValue + "\t");
                        }
                        System.out.println();
                }
                 
         try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","saksham026");
            Statement stat=con.createStatement();
            //System.out.println("username:"+username);
            //System.out.println("password :"+password);
             
            
            for (int i = 1; i < dataHolder.size(); i++) {		//not reading column header
                Vector cellStoreVector = (Vector) dataHolder.elementAt(i);
                       Cell myCell = (Cell) cellStoreVector.elementAt(0);
                       String stringCellValue = myCell.toString();
                        //System.out.print(stringCellValue + "\t");
                       Cell myCell1 = (Cell) cellStoreVector.elementAt(1);
                       String stringCellValue1 = myCell1.toString();
                       
                       int k=stat.executeUpdate("insert into excel values('"+stringCellValue+"','"+stringCellValue1+"')");
                                      
                       
                System.out.println();
        }
             
            System.out.println("Data is inserted");
            stat.close();
            con.close();
                }
         catch(Exception e){}   
        }
}
