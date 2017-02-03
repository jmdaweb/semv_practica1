package com.semv.practica1.main;

import com.semv.practica1.symbols_table.Scope;
import com.semv.practica1.symbols_table.ScopeTree;

public class MainClass {
	
	public static void main(String[] args) {
		ScopeTree scopeTree = new ScopeTree(new Scope(null));
		
		Scope currentScope = scopeTree.getRoot();
		
		
	}
	
}