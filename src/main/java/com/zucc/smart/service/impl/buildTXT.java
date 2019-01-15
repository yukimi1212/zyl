package com.zucc.smart.service.impl;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class buildTXT {

    public static void alertBar1(double[] data1, double[] data2) throws IOException {
    	String str1 = "[";
    	String str2 = "[";
    	for(int i=0; i<data1.length; i++) {
    		str1 = str1 + data1[i];
    		str2 = str2 + data2[i];
    		if(i != data1.length-1) {
    			str1 = str1 + ",";
    			str2 = str2 + ",";
    		}
    		else {
    			str1 = str1 + "]";
    			str2 = str2 + "]";
    		}
    	}
    	System.out.println(str1);
    	System.out.println(str2);

    	String oldFilePath = "C:\\Users\\lenovo\\Desktop\\graduation project\\smart-park\\src\\main\\webapp\\data\\bar-1-2.txt";
    	String newFilePath = "C:\\Users\\lenovo\\Desktop\\graduation project\\smart-park\\src\\main\\webapp\\data\\bar-1-2-副本.txt";
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
        long perSplitLines1=26;
        long perSplitLines2=36;
        String line = null;  
        //逐行读取，逐行输出   
        for (long lineCounter = 0; (line = input.readLine()) != null; lineCounter++)  
        {  
//            System.out.println(line);
            if(lineCounter == perSplitLines1) {
//            	line = "      \"values\" :   [9,9,9,9,9,9,9,9,9]";
            	line = "      \"values\" :   " + str1;
            }
            else if(lineCounter == perSplitLines2) {
//            	line = "      \"values\" :   [1,1,1,1,1,1,1,1,1]";
            	line = "      \"values\" :   " + str2;
            }
            
            output.append(line + "\r\n");  
        }  
        output.close();
        input.close();
    }

}
