package com.semv.practica1.symbols_table;

public class ScopeTree {
	private static Scope root;
	private static Scope currentScope;
	public static Scope getRoot () {
		return root;
	}
	public static Scope getCurrentScope(){
		return currentScope;
	}
	public static void setCurrentScope(Scope sc){
		currentScope=sc;
	}
	public static void initialize(){
		root=new Scope(null, "main", "void");
	}
}