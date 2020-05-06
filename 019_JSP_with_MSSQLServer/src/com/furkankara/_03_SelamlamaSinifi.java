package com.yazilimvideo;

public class _03_SelamlamaSinifi {
	 //------------------------------ 
	 private String isim;
	 private String soyisim;
	 private String mesaj;
	 //------------------------------
	    public _03_SelamlamaSinifi() {
	        this.mesaj = "Mesaj yok.";
	        this.isim = "İsim yok.";
	        this.soyisim = "Soyisim yok.";
	    }
	 //------------------------------
	    public void setMesaj( String gelenMesaj ) {
	        this.mesaj = gelenMesaj;
	    }

	    public String getMesaj() {
	        return mesaj;
	    }
	 //------------------------------
	    public void setIsim( String gelenIsim ) {
	        this.isim = gelenIsim;
	    }

	    public String getIsim() {
	        return isim;
	    }
	 //------------------------------
	    public void setSoyisim( String gelenSoyisim ) {
	        this.soyisim = gelenSoyisim;
	    }

	    public String getSoyisim() {
	        return soyisim;
	    }
	 //------------------------------
	}

