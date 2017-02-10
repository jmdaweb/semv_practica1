package com.semv.practica1.symbols_table;

import java.util.HashMap;

public class SymTable {
	
	private HashMap <String, SymAttributes> items;
	
	public SymTable () {
		this.items = new HashMap<String, SymAttributes>();
	}
	
	public boolean addItem (String key, SymAttributes value) {
		if (this.getAttributes(key)==null){
			this.items.put(key, value);
			return true;
		}else{
			return false;
		}
	}
	
	public SymAttributes getAttributes (String key) {
		return this.items.get(key);
	}
	
}