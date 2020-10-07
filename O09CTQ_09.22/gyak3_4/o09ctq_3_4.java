package gyak3_4;

import java.io.BufferedReader;
import java.io.FileReader;

public class o09ctq_3_4 {
	public void hf2(String fnev){		
		String sor;
		String szavak;
		int sorid=0;
		try{		
			BufferedReader br = new BufferedReader(new FileReader(fnev));
			while((sor=br.readLine())!=null){		
				System.out.print(sor.toUpperCase());
			}
			br.close();
			System.out.println("ok");
		}catch(Exception ee){		
			ee.printStackTrace();
		}
	}
}
