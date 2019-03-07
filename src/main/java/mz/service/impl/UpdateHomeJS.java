package mz.service.impl;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

import org.springframework.boot.SpringApplication;

import mz.SystemApplication;

public class UpdateHomeJS {

    public static void updateHomeJS(int diff_zyl, int diff_yjl, String currentDate) throws IOException {    	
    	coverHomeJS();
       	
    	boolean update = false;
    	String oldFilePath = "C:\\Users\\lenovo\\Desktop\\other\\zyl\\src\\main\\webapp\\js\\charts-home.js";
    	String newFilePath = "C:\\Users\\lenovo\\Desktop\\other\\zyl\\src\\main\\webapp\\js\\charts-home-2.js";
    	File oldFile = new File(oldFilePath);
    	File newFile = new File(newFilePath);
    	if (newFile.exists()) {
    		newFile.delete();
        }
    	newFile.createNewFile();
    	BufferedReader input=new BufferedReader(new InputStreamReader(new BufferedInputStream(new FileInputStream (oldFile))));
        //每个块建立一个输出  
        BufferedWriter output = new BufferedWriter( new OutputStreamWriter( new FileOutputStream(newFile)));
        //设置你需要读到第几行
        long labelsLine=36;
        long zylDiffLine = 58;
        long yjlDiffLine = 81;
        String line = null;  
        //逐行读取，逐行输出   
        for (long lineCounter = 0; (line = input.readLine()) != null; lineCounter++)  
        {     		
        		String[] cut_line = line.split("]");
        		if(lineCounter == labelsLine && line.indexOf(currentDate) == -1) {
        			System.out.println(line);
            		System.out.println("enter " + lineCounter);
            		update = true;
        			line = cut_line[0] + ",\"" + currentDate + "\"]" + cut_line[1];
        		}           
        		else if(lineCounter == zylDiffLine && update) {
        			line = cut_line[0] + "," + diff_zyl + "]" + cut_line[1];
        		}
        		else if(lineCounter == yjlDiffLine && update) {
        			line = cut_line[0] + "," + diff_yjl + "]" + cut_line[1];
        		}
        	
            output.append(line + "\r\n");  
        }  
        output.close();
        input.close();
    }

	private static void coverHomeJS() throws IOException {
		String oldFilePath = "C:\\Users\\lenovo\\Desktop\\other\\zyl\\src\\main\\webapp\\js\\charts-home-2.js";
    	String newFilePath = "C:\\Users\\lenovo\\Desktop\\other\\zyl\\src\\main\\webapp\\js\\charts-home.js";
    	File oldFile = new File(oldFilePath);
    	File newFile = new File(newFilePath);
    	if (newFile.exists()) { 
    		newFile.delete();
        }
    	newFile.createNewFile();
    	BufferedReader input=new BufferedReader(new InputStreamReader(new BufferedInputStream(new FileInputStream (oldFile))));
        //每个块建立一个输出  
        BufferedWriter output = new BufferedWriter( new OutputStreamWriter( new FileOutputStream(newFile)));
        //设置你需要读到第几行
        String line = null;  
        //逐行读取，逐行输出  
        while((line = input.readLine()) != null) {
            output.append(line + "\r\n");  
        }  
        output.close();
        input.close();
		
	}
    
    
/*    public static void main(String[] args) throws IOException {
    	ArrayList<Integer> data1 = new ArrayList<Integer>();
    	ArrayList<Integer> data2 = new ArrayList<Integer>();

    	data1.add(1);
    	data1.add(11);
    	
    	data2.add(2);
    	data2.add(22);
    	updateHomeJS(data1,data2);
    }*/

}
