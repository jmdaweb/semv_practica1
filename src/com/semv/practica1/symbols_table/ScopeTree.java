package com.semv.practica1.symbols_table;

public class ScopeTree {
	
	private Scope root;
	
	public ScopeTree (Scope root) {
		this.root = root;
	}
	
	public Scope getRoot () {
		return this.root;
	}
	
}