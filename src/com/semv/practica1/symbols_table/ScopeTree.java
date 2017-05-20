package com.semv.practica1.symbols_table;

public class ScopeTree {
	private static Scope root;
	private static Scope currentScope;
	public static Scope getRoot () {
		return ScopeTree.root;
	}
	public static Scope getCurrentScope(){
		if (ScopeTree.currentScope==null){
			System.out.println("Cuidado, que va nulo");
		}
		return ScopeTree.currentScope;
	}
	public static void setCurrentScope(Scope sc){
		ScopeTree.currentScope=sc;
	}
	public static void initialize(){
		ScopeTree.root=new Scope(null, "main", "void");
		ScopeTree.currentScope=root;
	}
}