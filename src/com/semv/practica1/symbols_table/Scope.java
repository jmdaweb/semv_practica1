package com.semv.practica1.symbols_table;

import java.util.ArrayList;
import java.util.List;

public class Scope {
	
	private SymTable symTable;
	private Scope parent;
	private List<Scope> children;
	private String name;

	public Scope (Scope parent, String name) {
		this.symTable = new SymTable();
		this.parent = parent;
		this.children = new ArrayList<Scope>();
		this.name=name;
	}
	
	/*public Scope (SymTable symTable) {
		this.symTable = symTable;
		this.parent = null;
		this.children = new ArrayList<Scope>();
	}*/
	
	public Scope (SymTable symTable, Scope parent, String name) {
		this.symTable = symTable;
		this.parent = parent;
		this.children = new ArrayList<Scope>();
		this.name=name;
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
	
	public String getNombre(){
		return this.nombre;
	}
}