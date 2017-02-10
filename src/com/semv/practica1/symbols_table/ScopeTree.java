package com.semv.practica1.symbols_table;

public class ScopeTree {
	
	private static Scope root=new Scope(null, "main");
	
/*	public ScopeTree (Scope root) {
		this.root = root;
	}*/
	
	public static Scope getRoot () {
		return root;
	}
	
}