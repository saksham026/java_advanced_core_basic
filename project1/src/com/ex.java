package com;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import model.Database;

public class ex {

public static void main(String[] args) throws Exception {

	   Connection con=Database.dataConnection();       //Database is name of class in model package 
	   int current_user_id=5;
	   
		Map fav_producer_entity = new HashMap();
		ArrayList<Map> fav_producer_entity_list= new ArrayList<Map>();
		String producer_name;
		Blob personal_profile_photo;
		byte[] personal_profile_photo_bytes;
		byte[][] personal_profile_photo_bytes_array = null;
		
		int e_id=1,ctr=0,ctr1=0;		 	 
		
		ResultSet rs; 
		PreparedStatement pst;

		try
		{
			
			pst=con.prepareStatement("select id,fname,photo from register where id=5");
			rs=pst.executeQuery();
			
			while(rs.next())  
			{
			
				e_id = rs.getInt(1);
				producer_name = rs.getString(2);
				personal_profile_photo = rs.getBlob(3);

				personal_profile_photo_bytes = personal_profile_photo.getBytes(1,(int)personal_profile_photo.length());
				//personal_profile_photo_bytes_array[ctr1]=personal_profile_photo_bytes;
				 
				fav_producer_entity.put("e_id", e_id);
				fav_producer_entity.put("producer_name", producer_name);
				fav_producer_entity.put("personal_profile_photo", personal_profile_photo_bytes);
				
				fav_producer_entity_list.add(fav_producer_entity);
				ctr++;
			 
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for(int i=0;i<fav_producer_entity_list.size();i++)
		{

			System.out.println(fav_producer_entity_list.get(i).get("e_id"));
			System.out.println(fav_producer_entity_list.get(i).get("producer_name"));
			System.out.println(fav_producer_entity_list.get(i).get("personal_profile_photo"));
			
		}
		
}
}
