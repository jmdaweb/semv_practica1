package com.semv.practica1.files;

import java.io.File;

import com.semv.practica1.exceptions.InvalidFileException;

public class FileAnalyzer {
	
	private File file;
	
	public FileAnalyzer (String filePath) throws InvalidFileException {
		File fileToOpen = new File(filePath);
		
		if (!fileToOpen.exists()) {
			throw new InvalidFileException("File not exists");
		}
		if (fileToOpen.isDirectory()) {
			throw new InvalidFileException("The selected file is a directory");
		}
		
		this.file = fileToOpen;
	}
	
	public File getFile() {
		return this.file;
	}

}
