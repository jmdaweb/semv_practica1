package com.semv.practica1.symbols_table;

public class SymAttributes {
	
	private String type;
	private int row;
	private int col;
	private String name;
	
	public SymAttributes (String type, int row, int col, String name) {
		this.type = type;
		this.row = row;
		this.col = col;
		this.name=name;
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
	
	public String getName(){
		return this.name;
	}
	
}