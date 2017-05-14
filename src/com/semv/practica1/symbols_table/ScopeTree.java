package com.semv.practica1.symbols_table;

public class ScopeTree {
	
	private static Scope root=new Scope(null, "main", "void");
	private static Scope currentScope;
/*	public ScopeTree (Scope root) {
		this.root = root;
	}*/
	
	public static Scope getRoot () {
		return root;
	}
	public static Scope getCurrentScope(){
		return currentScope;
	}
	public static void setCurrentScope(Scope sc){
		currentScope=sc;
	}
}