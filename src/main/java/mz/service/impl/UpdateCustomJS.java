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

public class UpdateCustomJS {

    public static boolean updateCustomJS(int ranking, int active, int page_amount, String yesterdayDate) throws IOException {    	
    	coverHomeJS();
       	
    	boolean update = false;
    	String oldFilePath = "C:\\Users\\lenovo\\Desktop\\other\\zyl\\src\\main\\webapp\\js\\charts-custom.js";
    	String newFilePath = "C:\\Users\\lenovo\\Desktop\\other\\zyl\\src\\main\\webapp\\js\\charts-custom-2.js";
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
        long labels_rank_Line=168;
        long data_rank_Line = 190;
        long labels_active_Line=230;
        long data_active_Line = 252;
        long labels_page_Line=292;
        long data_page_Line=314;
        String line = null;  
        //逐行读取，逐行输出   
        for (long lineCounter = 0; (line = input.readLine()) != null; lineCounter++)  
        {     		
        		String[] cut_line = line.split("]");
        		if(lineCounter == labels_rank_Line && line.indexOf(yesterdayDate) == -1) {
        			System.out.println(line);
            		System.out.println("enter " + lineCounter);
            		update = true;
        			line = cut_line[0] + ",\"" + yesterdayDate + "\"]" + cut_line[1];
        		}           
        		else if(lineCounter == data_rank_Line && update) {
        			line = cut_line[0] + "," + ranking + "]" + cut_line[1];
        		}
        		else if(lineCounter == labels_active_Line && update) {
        			line = cut_line[0] + ",\"" + yesterdayDate + "\"]" + cut_line[1];        		
        		}
        		else if(lineCounter == data_active_Line && update) {
        			line = cut_line[0] + "," + active + "]" + cut_line[1];
        		}
        		else if(lineCounter == labels_page_Line && update) {
        			line = cut_line[0] + ",\"" + yesterdayDate + "\"]" + cut_line[1];        		
        		}
        		else if(lineCounter == data_page_Line && update) {
        			line = cut_line[0] + "," + page_amount + "]" + cut_line[1];
        		}
        	
            output.append(line + "\r\n");  
        }  
        output.close();
        input.close();
        
        return update;
    }

	private static void coverHomeJS() throws IOException {
		String oldFilePath = "C:\\Users\\lenovo\\Desktop\\other\\zyl\\src\\main\\webapp\\js\\charts-custom-2.js";
    	String newFilePath = "C:\\Users\\lenovo\\Desktop\\other\\zyl\\src\\main\\webapp\\js\\charts-custom.js";
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
