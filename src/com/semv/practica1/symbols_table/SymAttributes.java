package com.semv.practica1.symbols_table;

public class SymAttributes {
	
	private int type;
	private int row;
	private int col;
	private String name;
	
	public SymAttributes (int type, int row, int col, String name) {
		this.type = type;
		this.row = row;
		this.col = col;
		this.name=name;
	}
	
	public int getType () {
		return this.type;
	}
	
	public int getRow () {
		return this.row;
	}
	
	public int getCol () {
		return this.col;
	}
	
	public String getName(){
		return this.name;
	}
	
}