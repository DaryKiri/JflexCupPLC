

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
		switch(rel_op)
		{
		case EQUALS:
			Utils.Outprint("if (" + e1 + rel_op + e2 + ") goto " + Utils.getCurrentLabelString() + ";");
			Utils.Outprint("goto " + Utils.getNextLabelString() + ";");
			break;
		case DISTINTO:
			Utils.Outprint("if (" + e1 + EQUALS + e2 + ") goto " + Utils.getNextLabelString() + ";");
			Utils.Outprint("goto " + Utils.getCurrentLabelString() + ";");
			break;
		case MAYOR:
			Utils.Outprint("if (" + e2 + MENOR + e1 + ") goto " + Utils.getCurrentLabelString() + ";");
			Utils.Outprint("goto " + Utils.getNextLabelString() + ";");
			break;
		case MENOR:
			Utils.Outprint("if (" + e1 + MENOR + e2 + ") goto " + Utils.getCurrentLabelString() + ";");
			Utils.Outprint("goto " + Utils.getNextLabelString() + ";");
			break;
		case MAYORE:
			Utils.Outprint("if (" + e1 + MENOR + e2 + ") goto " + Utils.getNextLabelString() + ";");
			Utils.Outprint("goto " + Utils.getCurrentLabelString() + ";");
			break;
		case MENORE:
			Utils.Outprint("if (" + e2 + MENOR + e1 + ") goto " + Utils.getNextLabelString() + ";");
			Utils.Outprint("goto " + Utils.getCurrentLabelString() + ";");
			break;
		default:
			throw new RuntimeException("error con operaciones logicas");
		}
	}

	public static void printGoTo(List<String> labels){
		for(String l : labels){
			Utils.printGoTo(l);
		}
	}

	public static void printLabels(List<String> labels){
		for(String l : labels){
			Utils.printLabel(l);
		}
	}
}
