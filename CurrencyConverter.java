package convert;
/* 
 * JSP requires different syntax to import these classes, these are just for my own work
 */

import java.util.Scanner;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DecimalFormat;

public class CurrencyConverter {
	private String input;
	private String output;
	private double val;
	
	public CurrencyConverter(){
		
	}
	
	public String getInput(){
		return input;
	}
	
	public String getOutput(){
		return output;
	}
	
	public Double getVal(){
		return val;
	}
	
	public void setInput(String s){
		input = s;
	}
	
	public void setOutput(String s){
		output = s;
	}
	
	public void setVal(Double d){
		val = d;
	}
	
	/* Use JSP to pass input/output currency symbols (in HTML input field) and the amount of input currency (also in HTML field)
	 * into this function.Call this function in the JSP page using the necessary syntax. 
	 * This function returns the converted currency value by multiplying the input currency value with the exchange rate
	 */
	public double getConvertedVal() throws MalformedURLException, IOException {
		
		URL url = new URL("https://free.currencyconverterapi.com/api/v6/convert?q="+input+"_"+output+"&compact=ultra");
		BufferedReader bf = new BufferedReader(new InputStreamReader(url.openStream()));
		
		// the API conversion rate, returned in JSON format. Example: {"USD_JPY":112.550385}
		String line = bf.readLine();
		String rateString = "";
		double rateValue = 0;
		double outputAmount = 0;
		
		if(line.length() > 0) {
			
			// loop through the entire string, and after the colon is reached, start saving the conversion rate to String
			for(int i = 0; i < line.length(); i++) {
				
				if(line.charAt(i) == ':') {
					
					i++; // increment i so that it corresponds to the number at beginning of conversion rate
					while(i < line.length() - 1) {
						
						rateString += line.charAt(i);
						i++;
					}
					
					break;
				}
			}
		}
		
		// if line.length() = 0, then either "inputCurrency" or "outputCurrency" is not in the database. Exit Java program.
		else {
			System.exit(0);
		}
		rateValue = Double.parseDouble(rateString);
		outputAmount = rateValue * val;
		DecimalFormat df = new DecimalFormat("#####.##");
		outputAmount = Double.parseDouble(df.format(outputAmount));
		return outputAmount;
	}
}
