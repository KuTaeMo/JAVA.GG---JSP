package com.project.javagg.utils;

public class Script {
	
	public static String href(String msg, String url) {
		StringBuilder sb = new StringBuilder();
		sb.append("<script>");
		sb.append("alert('"+msg+"');");
		sb.append("location.href = '"+url+"';");
		sb.append("</script>");
		
		return sb.toString();
	}
	
	public static String back(String msg) {
		StringBuffer sb = new StringBuffer();
		sb.append("<script>\n");
		sb.append("alert('"+msg+"');\n");
		sb.append("\n history.back();");
		sb.append("</script>");
		
		return sb.toString();
	}
	
	public static String reload(String msg) {
		StringBuffer sb = new StringBuffer();
		sb.append("<script>\n");
		sb.append("alert('"+msg+"');\n");
		sb.append("</script>");
		
		return sb.toString();
	}
}
