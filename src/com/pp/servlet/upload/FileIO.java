package com.pp.servlet.upload;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class FileIO {

	public static void main(String[] args) throws FileNotFoundException {
		read("text1.txt");
	}

	public static void read(String file)  {
		System.out.println("started");
		// read the file to console
		Scanner scanner;
		try {
			scanner = new Scanner(new File(file));
			while (scanner.hasNextLine()) {
				String line = scanner.nextLine();
				System.out.println(line);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		

	}
}
