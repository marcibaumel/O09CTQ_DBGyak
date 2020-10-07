package meiit.baumel;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

public class OlvasBM {

	public static int intOlvas(FileReader bs) throws IOException{
		StringBuffer sz= new StringBuffer(12);
		int b;
		do{
			b=bs.read();
			if((char)b != ',')
				sz.append((char)b);
			else
				break;
		}while(true);
		return Integer.parseInt(sz.toString());
		}
	
	public static void main(String[] args)throws IOException{
		int db;
		File fajl=new File("baumel.txt");
		FileReader be_stream =new FileReader(fajl);
		
		db=intOlvas(be_stream);
		System.out.println("Adatok:" +db);
		
		int[] x =new int[db];
		for(int i=0; i<db; i++){
			x[i]=intOlvas(be_stream);
			System.out.println(i+" .adat ="+x[i]);
		}
		be_stream.close();
		
		int osszeg=0;
		for(int i=0;i<db; i++){
			osszeg+= x[i];
		}
		System.out.println("Összeg: " +osszeg);
			
	}

}

	/*
	public static void main(String[] args)
		    throws IOException
		    {
		        Scanner textfile = new Scanner(new File("baumel.txt"));

		        filereader(textfile);
		}   


		   static void filereader(Scanner textfile)     
		{         
		    int i = 0;         
		    int sum = 0;          
		    while(textfile.hasNextLine())         
		    {       
		        int nextInt = textfile.nextInt();          

		        System.out.println(nextInt);             
		        sum = sum + nextInt;
		        i++;         
		    }     
		}
	*/
	
	
