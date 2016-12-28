package plUtils;

import java.util.Stack;

public class IterUtils {
	private static Stack<String> labelStack = new Stack<>();
	
	
	public static void pushLabel(String label){
		labelStack.push(label);
	}
	
	public static void printLabelTop(){
		Utils.printLabel(labelStack.peek());
	}
	
	public static void printGoToTop(){
		Utils.printGoTo(labelStack.peek());
	}
	
	public static void printPopGoTo(){
		Utils.printGoTo(labelStack.pop()); // puede petar
	}
}
