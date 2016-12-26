package plUtils;

import java.util.Stack;

public class IfHolder {
	private String ifLabel;
	private String elseLabel;
	private String finalLabel;
	public static Stack<String> finalLabelStack;

	public IfHolder(){
		ifLabel = null;
		elseLabel = null;
		finalLabel = null;
		if(finalLabelStack == null){
			finalLabelStack = new Stack<>();
		}
	}
	
	public IfHolder(String ifLabel, String elseLabel, String finalLabel){
		this.ifLabel = ifLabel;
		this.elseLabel = elseLabel;
		this.finalLabel = finalLabel;
		if(finalLabelStack == null){
			finalLabelStack = new Stack<>();
		}
	}

	public String getIfLabel() {
		return ifLabel;
	}

	public void setIfLabel(String ifLabel) {
		this.ifLabel = ifLabel;
	}

	public String getElseLabel() {
		if(elseLabel == null){
			return "";
		}else{
			return elseLabel;
		}
	}

	public void setElseLabel(String elseLabel) {
		this.elseLabel = elseLabel;
	}
	
	
	public String getFinalLabel() {
		return finalLabel;
	}

	public void setFinalLabel(String finalLabel) {
		this.finalLabel = finalLabel;
	}
}
