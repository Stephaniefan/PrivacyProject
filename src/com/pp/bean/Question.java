package com.pp.bean;

public class Question {

	public String id;
	public String title;
	public String ans;
	
	
	public Question(String id, String title, String ans){
		this.id = id;
		this.title = title;
		this.ans = ans;
	}
	
	
	public String toString(){
		return "id:"+this.id+" title:"+this.title+" ans:"+this.ans;
	}
}
