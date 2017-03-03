package com.semv.practica1.symbols_table;

public class Symbol {
	
	private String name;
	private int line;
	private int column;
	
	public Symbol (String name, int line, int column) {
		this.name = name;
		this.line = line;
		this.column = column;
	}
	
	public String getName() {
		return this.name;
	}
	
	public int getLine() {
		return this.line;
	}
	
	public int getColumn() {
		return this.column;
	}

}
