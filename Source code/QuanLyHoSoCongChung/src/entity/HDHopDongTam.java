package entity;

import java.io.Serializable;
import java.util.List;

public class HDHopDongTam implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private DSDuongSu duongSuA;
	private DSDuongSu nguoiUyQuyenA;
	private int coUyQuyenBenA;
	
	private DSDuongSu duongSuB;
	private DSDuongSu nguoiUyQuyenB;
	private int coUyQuyenBenB;
	
	private DSDuongSu duongSuC;
	private DSDuongSu nguoiUyQuyenC;
	private int coUyQuyenBenC;
	
	private HDHopDong hopDong;
	
	private List<TSTaiSan> listTaiSanBenA;
	private List<TSTaiSan> listTaiSanBenB;
	private List<DSDuongSu> listDongSoHuuBenA;
	private List<DSDuongSu> listDongSoHuuBenB;
	private List<DSDuongSu> listDongSoHuuBenC;
	
	
	public List<DSDuongSu> getListDongSoHuuBenC() {
		return listDongSoHuuBenC;
	}
	public void setListDongSoHuuBenC(List<DSDuongSu> listDongSoHuuBenC) {
		this.listDongSoHuuBenC = listDongSoHuuBenC;
	}
	public HDHopDong getHopDong() {
		return hopDong;
	}
	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}
	
	public DSDuongSu getDuongSuB() {
		return duongSuB;
	}
	public void setDuongSuB(DSDuongSu duongSuB) {
		this.duongSuB = duongSuB;
	}
	public DSDuongSu getNguoiUyQuyenB() {
		return nguoiUyQuyenB;
	}
	public void setNguoiUyQuyenB(DSDuongSu nguoiUyQuyenB) {
		this.nguoiUyQuyenB = nguoiUyQuyenB;
	}
	public int getCoUyQuyenBenB() {
		return coUyQuyenBenB;
	}
	public void setCoUyQuyenBenB(int coUyQuyenBenB) {
		this.coUyQuyenBenB = coUyQuyenBenB;
	}
	public DSDuongSu getDuongSuC() {
		return duongSuC;
	}
	public void setDuongSuC(DSDuongSu duongSuC) {
		this.duongSuC = duongSuC;
	}
	public DSDuongSu getNguoiUyQuyenC() {
		return nguoiUyQuyenC;
	}
	public void setNguoiUyQuyenC(DSDuongSu nguoiUyQuyenC) {
		this.nguoiUyQuyenC = nguoiUyQuyenC;
	}
	public int getCoUyQuyenBenC() {
		return coUyQuyenBenC;
	}
	public void setCoUyQuyenBenC(int coUyQuyenBenC) {
		this.coUyQuyenBenC = coUyQuyenBenC;
	}
	public List<DSDuongSu> getListDongSoHuuBenB() {
		return listDongSoHuuBenB;
	}
	public void setListDongSoHuuBenB(List<DSDuongSu> listDongSoHuuBenB) {
		this.listDongSoHuuBenB = listDongSoHuuBenB;
	}
	public List<DSDuongSu> getListDongSoHuuBenA() {
		return listDongSoHuuBenA;
	}
	public void setListDongSoHuuBenA(List<DSDuongSu> listDongSoHuuBenA) {
		this.listDongSoHuuBenA = listDongSoHuuBenA;
	}
	
	public List<TSTaiSan> getListTaiSanBenA() {
		return listTaiSanBenA;
	}
	public void setListTaiSanBenA(List<TSTaiSan> listTaiSanBenA) {
		this.listTaiSanBenA = listTaiSanBenA;
	}
	public List<TSTaiSan> getListTaiSanBenB() {
		return listTaiSanBenB;
	}
	public void setListTaiSanBenB(List<TSTaiSan> listTaiSanBenB) {
		this.listTaiSanBenB = listTaiSanBenB;
	}
	public int getCoUyQuyenBenA() {
		return coUyQuyenBenA;
	}
	public void setCoUyQuyenBenA(int coUyQuyenBenA) {
		this.coUyQuyenBenA = coUyQuyenBenA;
	}
	public DSDuongSu getDuongSuA() {
		return duongSuA;
	}
	public void setDuongSuA(DSDuongSu duongSuA) {
		this.duongSuA = duongSuA;
	}
	public DSDuongSu getNguoiUyQuyenA() {
		return nguoiUyQuyenA;
	}
	public void setNguoiUyQuyenA(DSDuongSu nguoiUyQuyenA) {
		this.nguoiUyQuyenA = nguoiUyQuyenA;
	}
}
