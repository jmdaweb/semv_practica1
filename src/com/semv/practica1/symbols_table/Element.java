package com.semv.practica1.symbols_table;

import java_cup.runtime.Symbol;

public class Element extends Symbol{
	
	private String name;
	private int line;
	private int column;
	
	public Element (String name, int line, int column, int value) {
		super(value);
		this.name = name;
		this.line = line;
		this.column = column;
		this.value=this;
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
