package com.semv.practica1.main;

import java.io.IOException;

import com.semv.practica1.exceptions.InvalidFileException;
import com.semv.practica1.files.FileAnalyzer;
import com.semv.practica1.lexer.*;
import com.semv.practica1.symbols_table.ScopeTree;
import com.semv.practica1.syntactic.parser;

public class Practica1 {
	
	public static void readFile(String filePath) throws IOException {
		try {
			FileAnalyzer file = new FileAnalyzer(filePath);			

			try {
				AnalizadorLexico lexer = new AnalizadorLexico(new java.io.FileReader(file.getFile()));
				parser parser = new parser(lexer);
				
				parser.parse();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			//Symbols table
		} catch (InvalidFileException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public static void showHelp() {
		System.out.println("Usage: Practica1 file");
		System.out.println("");
		System.out.println("File must be an pseudo-C language");
	}
	
	public static void main (String[] argv) throws IOException {
		ScopeTree.initialize();
		//if (argv.length==1) {
			//readFile(argv[0]);
		//}
		//else {
			//showHelp();
		//}
		readFile("ejemplo.c");
		ScopeTree.mostrarArbol();
	}

}
