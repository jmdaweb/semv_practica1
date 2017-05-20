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
	private static void mostrar(Scope sc){
		System.out.println(sc.getType()+" "+sc.getName()+"{");
		for (SymAttributes symbol:sc.getSymTable().getTable().values()){
			System.out.println(symbol.getType()+" "+symbol.getName());
		}
		for (Scope child:sc.getChildren()){
			mostrar(child);
		}
		System.out.println("}");
	}
	public static void mostrarArbol(){
		mostrar(root);
	}
}