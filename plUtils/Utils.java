package plUtils;

public class Utils {
	public static int TMP = 0;
	
	public static String getTmp(){
		/*String toReturn = "" + TMP;
		++TMP;*/
		return Integer.toString(TMP++);
	}
	
	public static void resetTmp(){
		TMP = 0;
	}
}
