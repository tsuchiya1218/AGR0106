package service;

import java.util.ArrayList;

import dao.AnqetDao;
import model.Anqet;

public class AnqetReview {
	public ArrayList<Anqet> searchAnqet() {
		AnqetDao dao = new AnqetDao();
		return dao.searchAnqet();
	}

}
