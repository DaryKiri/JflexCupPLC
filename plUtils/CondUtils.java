package plUtils;

import java.util.List;

public class CondUtils {
	public static final String EQUALS = "==";
	public static final String DISTINTO = "!=";
	public static final String MAYOR = ">";
	public static final String MENOR ="<";
	public static final String MAYORE = ">=";
	public static final String MENORE = "<=";

	public static void printLogical(String e1, String rel_op, String e2){
		//System.out.print("if (" + e1 + " == " + e2 + ") "); 
		// TODO: DEVOLVER BIEN LOS LABELS CREANDO UN OBJETO IfHolder??
		switch(rel_op)
		{
		case EQUALS:
			System.out.println("if (" + e1 + rel_op + e2 + ") goto " + Utils.getCurrentLabelString() + ";");
			System.out.println("goto " + Utils.getNextLabelString() + ";");
			break;
		case DISTINTO:
			System.out.println("if (" + e1 + MENOR + e2 + ") goto " + Utils.getNextLabelString() + ";");
			System.out.println("goto " + Utils.getCurrentLabelString() + ";");
			break;
		case MAYOR:
			System.out.println("if (" + e2 + MENOR + e1 + ") goto " + Utils.getCurrentLabelString() + ";");
			System.out.println("goto " + Utils.getNextLabelString() + ";");
			break;
		case MENOR:
			System.out.println("if (" + e1 + MENOR + e2 + ") goto " + Utils.getCurrentLabelString() + ";");
			System.out.println("goto " + Utils.getNextLabelString() + ";");
			break;
		case MAYORE:
			System.out.println("if (" + e1 + MENOR + e2 + ") goto " + Utils.getNextLabelString() + ";");
			System.out.println("goto " + Utils.getCurrentLabelString() + ";");
			break;
		case MENORE:
			System.out.println("if (" + e2 + MENOR + e1 + ") goto " + Utils.getNextLabelString() + ";");
			System.out.println("goto " + Utils.getCurrentLabelString() + ";");
			break;
		default:
			throw new RuntimeException("error con operaciones logicas");
		}
	}

	// new
	public static void printGoTo(List<String> labels){
		for(String l : labels){
			System.out.println("goto " + l + ";");
		}
	}

	// new
	public static void printLabels(List<String> labels){
		for(String l : labels){
			System.out.println(l + ":");
		}
	}
}
