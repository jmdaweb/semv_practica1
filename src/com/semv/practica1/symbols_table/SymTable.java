package com.semv.practica1.symbols_table;

import java.util.HashMap;

public class SymTable {
	
	private HashMap <String, SymAttributes> items;
	
	public SymTable () {
		this.items = new HashMap<String, SymAttributes>();
	}
	
	public void addItem (String key, SymAttributes value) {
		this.items.put(key, value);
	}
	
	public SymAttributes getAttributes (String key) {
		return this.items.get(key);
	}
	
}