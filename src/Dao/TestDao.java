package Dao;

import java.util.ArrayList;

public class TestDao {
	
	public ArrayList<Integer> getYear(int a){
		ArrayList<Integer> arr = new ArrayList<Integer>();
		for(int i=2019;i>=2019-a;i--) {
			arr.add(i);
		}
		return arr;
	}
	
	public ArrayList<Integer> getMonth(){
		ArrayList<Integer> arr = new ArrayList<Integer>();
		for(int i=1;i<=12;i++) {
			arr.add(i);
		}
		return arr;
	}
	
	public boolean getYearNhuan(int year){
		return ((year % 4==0 &&year%100 !=0 && year % 400 !=0)||(year%100==0 && year % 400==0));
	}
	
	public ArrayList<Integer> getDay(int month, int year){
		ArrayList<Integer> listDay = new ArrayList<Integer>();
		if(getYearNhuan(year)) {
			 switch (month) {
	            case 1:
	            case 3:
	            case 5:
	            case 7:
	            case 8:
	            case 10:
	            case 12:
	            	for(int i=1;i<=31;i++) {
	            		listDay.add(i);
	            	}
	            break;
	            case 4:
	            case 6:
	            case 9:
	            case 11:
	            	for(int i=1;i<=30;i++) {
	            		listDay.add(i);
	            	}
	            break;
	            case 2:
	            	for(int i=1;i<=29;i++) {
	            		listDay.add(i);
	            	}
	            break;
	        }
		}else {
			 switch (month) {
	            case 1:
	            case 3:
	            case 5:
	            case 7:
	            case 8:
	            case 10:
	            case 12:
	            	for(int i=1;i<=31;i++) {
	            		listDay.add(i);
	            	}
	            break;
	            case 4:
	            case 6:
	            case 9:
	            case 11:
	            	for(int i=1;i<=30;i++) {
	            		listDay.add(i);
	            	}
	            break;
	            case 2:
	            	for(int i=1;i<=28;i++) {
	            		listDay.add(i);
	            	}
	            break;
	        }
		}
		return listDay;
	}
	
	public static void main(String[] args) {
		TestDao t = new TestDao();
		System.out.println(t.getDay(2, 2016));
	}
}
