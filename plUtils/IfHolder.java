package plUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

public class IfHolder {
	private List<String> ifLabelList;
	private List<String> elseLabelList;
	private List<String> finalLabelList;
	
	public IfHolder(){
		// new
		ifLabelList = new ArrayList<>();
		elseLabelList = new ArrayList<>();
		finalLabelList = new ArrayList<>();
		
	}
	
	//new 
	public List<String> getIfLabels(){
		return ifLabelList;
	}
	
	public List<String> getElseLabels(){
		return elseLabelList;
	}
	
	public List<String> getFinalLabels(){
		return finalLabelList;
	}

	public void addIfLabel(String ifLabel) {
		ifLabelList.add(ifLabel);
	}
	
	public void addIfLabel(List<String> ifLabels){
		ifLabelList.addAll(ifLabels);
	}
	
	public void addElseLabel(String elseLabel){
		elseLabelList.add(elseLabel);
	}

	public void addElseLabel(List<String> elseLabels){
		elseLabelList.addAll(elseLabels);
	}
	
	public void addFinalLabel(String finalLabel){
		finalLabelList.add(finalLabel);
	}
	
	public void addFinalLabel(List<String> finalLabels){
		finalLabelList.addAll(finalLabels);
	}
}
