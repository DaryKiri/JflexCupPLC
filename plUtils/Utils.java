package plUtils;

public class Utils {
	// crear un metodo print para utils y poder printear o en fichero
	private static int TMP = 0;
	private static int LABEL = 0;
	
	public static String getTmp(){
		return Integer.toString(TMP++);
	}
	
	public static void resetTmp(){
		TMP = 0;
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
		System.out.println("goto " + label + ";");
	}
	
	public static void printLabel(String label){
		System.out.println(label + ":");
	}
	
	//testing
	public static void printIfGoTo(String exp1, String val_op, String exp2, String label){
		
	}
}
