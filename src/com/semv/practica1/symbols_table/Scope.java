package com.semv.practica1.symbols_table;

import java.util.ArrayList;
import java.util.List;

public class Scope {
	
	private SymTable symTable;
	private Scope parent;
	private List<Scope> children;
	private String name;
	private String type;
	public Scope (Scope parent, String name, String type) {
		this.symTable = new SymTable();
		this.parent = parent;
		this.children = new ArrayList<Scope>();
		this.name=name;
		this.type=type;
	}
	public Scope getParent () {
		return this.parent;
	}
	public List<Scope> getChildren () {
		return this.children;
	}
	public void addChild (Scope child) {
		this.children.add(child);
	}
	public String getName(){
		return this.name;
	}
	public SymTable getSymTable(){
		return this.symTable;
	}
	public String getType(){
		return type;
	}
	public void setName(String name) {
		this.name=name;
	}
	public void setSymTable(SymTable symTable) {
		this.symTable=symTable;
	}
	public void removeChild(Scope child){
		if (children.contains(child)){
			children.remove(child);
		}
	}
	public void setType(String name) {
		this.type=name;
	}
}