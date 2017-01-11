

import java.util.Stack;

public class IterUtils {
	private static Stack<String> labelStack = new Stack<>();
	private static Stack<String> forLabelStack = new Stack<>();
	
	
	public static void pushLabel(String label){
		labelStack.push(label);
	}
	
	public static void pushForLabel(String label){
		forLabelStack.push(label);
	}
	
	public static void printLabelTop(){
		Utils.printLabel(labelStack.peek());
	}
	
	public static void printForLabelTop(){
		Utils.printLabel(forLabelStack.peek());
	}
	
	public static void printGoToTop(){
		Utils.printGoTo(labelStack.peek());
	}
	
	public static void printForGoToTop(){
		Utils.printGoTo(forLabelStack.peek());
	}
	
	public static void printPopGoTo(){
		Utils.printGoTo(labelStack.pop());
	}
	
	public static void printForPopGoTo(){
		Utils.printGoTo(forLabelStack.pop()); 
	}
}
