package Dao;

import java.util.ArrayList;

public class UploadDao {
	public static ArrayList<String>hinhanh=new ArrayList<>();
	public ArrayList<String> loadHinhAnh(String s){
		hinhanh.add(s);
		return hinhanh;
	}
}
