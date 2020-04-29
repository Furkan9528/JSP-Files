package com.yazilimvideo;

import javax.servlet.http.HttpServletRequest;

public class _02_GirilenDegerleriKontrolEdenSinif {

	String kullaniciadimiz;
	String parolamiz;
	
	public String getKullaniciadimiz() {
		return kullaniciadimiz;
	}

	public void setKullaniciadimiz(String kullaniciadimiz) {
		this.kullaniciadimiz = kullaniciadimiz;
	}

	public String getParolamiz() {
		return parolamiz;
	}

	public void setParolamiz(String parolamiz) {
		this.parolamiz = parolamiz;
	}

	public void hatalariKontrolEdenFonksiyon(HttpServletRequest request) {

		String hatalar = "";

		if (kullaniciadimiz == null || kullaniciadimiz.trim().length() == 0) {
			hatalar = hatalar + "<li>KULLANICI ADI EKSiK<br>";
		}

		if (parolamiz == null || parolamiz.trim().length() == 0) {
			hatalar = hatalar + "<li>PAROLA EKSiK<br>";
		}

		if (hatalar.trim().length() > 0) {
			request.setAttribute("hatalar", hatalar);
		}

	}

}
