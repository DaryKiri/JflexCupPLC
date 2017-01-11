

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;

public class Utils {
	private static int TMP = 0;
	private static int LABEL = 0;
	public static PrintStream out;
	
	public static void setOutput(){
		out = System.out;
	}
	
	public static void setOutput(String file){
		try {
			out = new PrintStream(new FileOutputStream(file));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static String getTmp(){
		return "$t" + Integer.toString(TMP++);
	}
	
	public static void resetTmp(){
		TMP = 0;
	}
	
	public static void decrementLabel(){
		--LABEL;
	}
	
	public static int getCurrentLabel(){
		return LABEL;
	}
	
	public static String getCurrentLabelString(){
		return "L" + LABEL;
	}
	
	public static String getLastLabelString(){
		return "L" + (LABEL-1);
	}
	
	public static String getNextLabelString(){
		return "L" + (LABEL+1);
	}
	
	public static void incrementLabel(){
		++LABEL;
	}
	
	public static void resetLabel(){
		LABEL = 0;
	}
	
	public static void printGoTo(String label){
		Outprint("goto " + label + ";");
	}
	
	public static void printLabel(String label){
		out.println(label + ":");
	}
	
	public static void Outprint(String sentence){
		out.println("\t" + sentence);
	}
}
