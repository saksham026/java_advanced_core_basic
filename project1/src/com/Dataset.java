package com;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class Dataset {

	public static void main(String[] args) throws Exception
	{

		String planets[] = new String[]{"Sun","Moon","Mars","Mercury","Jupiter","Venus","Saturn","Rahu","Ketu"};
		String houses[] = new String[] { "I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII"};

		HSSFWorkbook workbook = new HSSFWorkbook();
		 
	    HSSFSheet sheet = workbook.createSheet("Sample sheet");
	 
	    Map<String, List<String>> empData = new HashMap<String, List<String>>();
	    List<String> name = new ArrayList<String>();


	    int h,i,j,k,l,m,n,o,p,q,r,s,t,rownum=1;

		for(h=0;h<12;h++)
		{
			for( i=0; i<9;i++)
			{
				//System.out.println(rownum +" Characteristic for " + planets[i] +" in house "+ houses[h]);	
				name = new ArrayList<String>();
				name.add(" Characteristic for " + planets[i] +" in house "+ houses[h]);
			    empData.put(Integer.toString(rownum), name);
				rownum++;
			}

		}

		//rownum=1;
		//System.out.println();
		//doubles

		for(h=0;h<12;h++)
		{
			for( i=0; i<9;i++)
			{
				for(j=i+1;j<9;j++)
				{
					int f=0;
					if( planets[i].equals("Rahu") ||  planets[j].equals("Rahu") )
					{
						if(planets[i].equals("Ketu") ||  planets[j].equals("Ketu"))
						{
							f=1;
						}
					}

					if(f==1)
					{
						continue ;
					}
					else
					{
							name = new ArrayList<String>();
			
						//System.out.println(rownum +" Characteristic for " + planets[i] + " & "+ planets[j]   +" in house "+ houses[h]);	
						name.add(
								" Characteristic for " + planets[i] + " & "+ planets[j]   +" in house "+ houses[h] );
						empData.put(Integer.toString(rownum), name);
						rownum++;
					}
				}

			}

		}
		
		//rownum=1;
		//System.out.println();
		//triples

		for(h=0;h<12;h++)
		{
			for( i=0; i<9;i++)
			{
				for(j=i+1;j<9;j++)
				{

					for(k=j+1;k<9;k++)
					{


						int f=0;
						if( planets[i].equals("Rahu") ||  planets[j].equals("Rahu") || planets[k].equals("Rahu"))
						{
							if(planets[i].equals("Ketu") ||  planets[j].equals("Ketu") || planets[k].equals("Ketu"))
							{
								f=1;
							}
						}

						if(f==1)
						{
							continue ;
						}
						else
						{
									name = new ArrayList<String>();
			
							//System.out.println(rownum +" Characteristic for " + planets[i] + " & " + planets[j] + " & " + planets[k] + " in house "+ houses[h]);
							name.add( 
									" Characteristic for " + planets[i] + " & " + planets[j] + " & " + planets[k] + " in house "+ houses[h] );
							empData.put(Integer.toString(rownum), name);
							rownum++;
						}


					}


				}

			}

		}

		//rownum=1;
		//System.out.println();
		//quadraples

		for(h=0;h<12;h++)
		{
			for( i=0; i<9;i++)
			{
				for(j=i+1;j<9;j++)
				{

					for(k=j+1;k<9;k++)
					{
						for(m=k+1;m<9;m++)
						{



							int f=0;
							if( planets[i].equals("Rahu") ||  planets[j].equals("Rahu") || planets[k].equals("Rahu") || planets[m].equals("Rahu"))
							{
								if(planets[i].equals("Ketu") ||  planets[j].equals("Ketu") || planets[k].equals("Ketu")|| planets[m].equals("Ketu"))
								{
									f=1;
								}
							}

							if(f==1)
							{
								continue ;
							}
							else
							{
							
									name = new ArrayList<String>();
			
								//System.out.println(rownum +" Characteristic for " + planets[i] + " & " + planets[j] + " & " + planets[k] + " & " + planets[m]+ " in house "+ houses[h]);
								name.add( 
										" Characteristic for " + planets[i] + " & " + planets[j] + " & " + planets[k] + " & " + planets[m]+ " in house "+ houses[h] );
								empData.put(Integer.toString(rownum), name);
								rownum++;
							}


						}


					}


				}

			}

		}



		//rownum=1;
		//System.out.println();
		//penta

		for(h=0;h<12;h++)
		{
			for( i=0; i<9;i++)
			{
				for(j=i+1;j<9;j++)
				{

					for(k=j+1;k<9;k++)
					{
						for(m=k+1;m<9;m++)
						{

							for(n=m+1;n<9;n++)
							{


								int f=0;
								if( planets[i].equals("Rahu") ||  planets[j].equals("Rahu") || planets[k].equals("Rahu") || planets[m].equals("Rahu") || planets[n].equals("Rahu"))
								{
									if(planets[i].equals("Ketu") ||  planets[j].equals("Ketu") || planets[k].equals("Ketu")|| planets[m].equals("Ketu")|| planets[n].equals("Ketu"))
									{
										f=1;
									}
								}

								if(f==1)
								{
									continue ;
								}
								else
								{
									name = new ArrayList<String>();
			
									//System.out.println(rownum +" Characteristic for " + planets[i] + " & " + planets[j] + " & " + planets[k] + " & " + planets[m] + " & " + planets[n] + " in house "+ houses[h]);
									name.add( 
											" Characteristic for " + planets[i] + " & " + planets[j] + " & " + planets[k] + " & " + planets[m] + " & " + planets[n] + " in house "+ houses[h] );
									empData.put(Integer.toString(rownum), name);
									rownum++;
								}



							}

						}



					}


				}

			}

		}







		//rownum=1;
		//System.out.println();
		//hexa

		for(h=0;h<12;h++)
		{
			for( i=0; i<9;i++)
			{
				for(j=i+1;j<9;j++)
				{

					for(k=j+1;k<9;k++)
					{
						for(m=k+1;m<9;m++)
						{

							for(n=m+1;n<9;n++)
							{
								for(o=n+1;o<9;o++)
								{


									int f=0;
									if( planets[i].equals("Rahu") ||  planets[j].equals("Rahu") || planets[k].equals("Rahu") || planets[m].equals("Rahu") || planets[n].equals("Rahu") || planets[o].equals("Rahu"))
									{
										if(planets[i].equals("Ketu") ||  planets[j].equals("Ketu") || planets[k].equals("Ketu")|| planets[m].equals("Ketu")|| planets[n].equals("Ketu")|| planets[o].equals("Ketu"))
										{
											f=1;
										}
									}

									if(f==1)
									{
										continue;
									}
									else
									{
									
											name = new ArrayList<String>();
			

										//System.out.println(rownum +" Characteristic for " + planets[i] + " & " + planets[j] + " & " + planets[k] + " & " + planets[m] + " & " + planets[n] +" & " + planets[o] + " in house "+ houses[h]);
										 name.add(
												 " Characteristic for " + planets[i] + " & " + planets[j] + " & " + planets[k] + " & " + planets[m] + " & " + planets[n] +" & " + planets[o] + " in house "+ houses[h] );
										empData.put(Integer.toString(rownum), name);
										rownum++;	
									}

								}

							}

						}



					}


				}

			}

		}



		//	rownum=1;
		//System.out.println();
		//hepta

		for(h=0;h<12;h++)
		{
			for( i=0; i<9;i++)
			{
				for(j=i+1;j<9;j++)
				{

					for(k=j+1;k<9;k++)
					{
						for(m=k+1;m<9;m++)
						{

							for(n=m+1;n<9;n++)
							{
								for(o=n+1;o<9;o++)
								{
									for(p=o+1;p<9;p++)
									{


										int f=0;
										if( planets[i].equals("Rahu") ||  planets[j].equals("Rahu") || planets[k].equals("Rahu") || planets[m].equals("Rahu") || planets[n].equals("Rahu") || planets[o].equals("Rahu")|| planets[p].equals("Rahu"))
										{
											if(planets[i].equals("Ketu") ||  planets[j].equals("Ketu") || planets[k].equals("Ketu")|| planets[m].equals("Ketu")|| planets[n].equals("Ketu")|| planets[o].equals("Ketu")|| planets[p].equals("Ketu"))
											{
												f=1;
											}
										}

										if(f==1)
										{
											continue ;
										}
										else
										{

											name = new ArrayList<String>();
			
											//System.out.println(rownum +" Characteristic for " + planets[i] + " & " + planets[j] + " & " + planets[k] + " & " + planets[m] + " & " + planets[n] +" & " + planets[o] + " & " + planets[p] + " in house "+ houses[h]);
											name.add(
													" Characteristic for " + planets[i] + " & " + planets[j] + " & " + planets[k] + " & " + planets[m] + " & " + planets[n] +" & " + planets[o] + " & " + planets[p] + " in house "+ houses[h] );
											empData.put(Integer.toString(rownum), name);
											rownum++;	
										}

									}

								}

							}

						}



					}


				}

			}

		}




		//rownum=1;
		//System.out.println();
		//octa

		for(h=0;h<12;h++)
		{
			for( i=0; i<9;i++)
			{
				for(j=i+1;j<9;j++)
				{

					for(k=j+1;k<9;k++)
					{
						for(m=k+1;m<9;m++)
						{

							for(n=m+1;n<9;n++)
							{
								for(o=n+1;o<9;o++)
								{
									for(p=o+1;p<9;p++)
									{

										for(q=p+1;q<9;q++)
										{


											int f=0;
											if( planets[i].equals("Rahu") ||  planets[j].equals("Rahu") || planets[k].equals("Rahu") || planets[m].equals("Rahu") || planets[n].equals("Rahu") || planets[o].equals("Rahu")|| planets[p].equals("Rahu")|| planets[q].equals("Rahu"))
											{
												if(planets[i].equals("Ketu") ||  planets[j].equals("Ketu") || planets[k].equals("Ketu")|| planets[m].equals("Ketu")|| planets[n].equals("Ketu")|| planets[o].equals("Ketu")|| planets[p].equals("Ketu")|| planets[q].equals("Ketu"))
												{
													f=1;
												}
											}

											if(f==1)
											{
												continue ;
											}
											else
											{

														name = new ArrayList<String>();
			
												//System.out.println(rownum +" Characteristic for " + planets[i] + " & " + planets[j] + " & " + planets[k] + " & " + planets[m] + " & " + planets[n] +" & " + planets[o] + " & " + planets[p] + " & " + planets[q] + " in house "+ houses[h]);
												  name.add( 
														  " Characteristic for " + planets[i] + " & " + planets[j] + " & " + planets[k] + " & " + planets[m] + " & " + planets[n] +" & " + planets[o] + " & " + planets[p] + " & " + planets[q] + " in house "+ houses[h] );
												empData.put(Integer.toString(rownum), name);
												rownum++;	
											}

										}

									}

								}

							}

						}



					}


				}

			}

		}
		
		
		Set<String> keyset = empData.keySet();
	    int rownum1 = 0;
	    
	    List<String> personsSorted = new ArrayList<>();
	    for(String p1 : keyset) {
	        personsSorted.add(p1);
	    }
	    
	    Collections.sort(personsSorted, new Comparator<String>() {
	        @Override
	        public int compare(String o1, String o2) {
	        	  
	            return Integer.parseInt(o1)-Integer.parseInt(o2);
	        }

	    });
	    
	    for (String key : personsSorted)
	    {
	        Row row = sheet.createRow(rownum1++);
	        List<String> nameList = empData.get(key);
	        int cellnum = 0;
	        for (Object obj : nameList)
	        {
	            Cell cell = row.createCell(cellnum++);
	            if (obj instanceof Date)
	            {
	                cell.setCellValue((Date) obj);
	            }
	            else if (obj instanceof Boolean)
	            {
	                cell.setCellValue((Boolean) obj);
	            }
	            else if (obj instanceof String)
	            {
	                cell.setCellValue((String) obj);
	            }
	            else if (obj instanceof Double)
	            {
	                cell.setCellValue((Double) obj);
	            }
	        }
	    }

	      FileOutputStream out = new FileOutputStream(
	         new File("astr2.xls"));
	      
	      workbook.write(out);
	      out.close();
	      System.out.println("done");

	}

}
