package com.semv.practica1.main;

import java.io.File;

import com.semv.practica1.exceptions.InvalidFileException;
import com.semv.practica1.files.FileAnalyzer;

public class Practica1 {
	
	public static void readFile(String filePath) {
		try {
			FileAnalyzer file = new FileAnalyzer(filePath);
			
			//Lexer
			//Syntactic
			//Symbols table
		} catch (InvalidFileException e) {
			e.printStackTrace();
		}
		
	}
	
	public static void showHelp() {
		System.out.println("Usage: Practica1 file");
		System.out.println("");
		System.out.println("File must be an pseudo-C language");
	}
	
	public static void main (String[] argv) {
		if (argv.length==1) {
			readFile(argv[0]);
		}
		else {
			showHelp();
		}
	}

}
