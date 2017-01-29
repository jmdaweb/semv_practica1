package com.semv.practica1.symbols_table;

public class SymAttributes {
	
	private String type;
	private int row;
	private int col;
	
	public SymAttributes (String type, int row, int col) {
		this.type = type;
		this.row = row;
		this.col = col;
	}
	
	public String getType () {
		return this.type;
	}
	
	public int getRow () {
		return this.row;
	}
	
	public int getCol () {
		return this.col;
	}
	
}