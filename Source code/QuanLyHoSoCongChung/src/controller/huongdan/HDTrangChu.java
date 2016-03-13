package controller.huongdan;

import util.Const;
import controller.BaseAction;

public class HDTrangChu extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int laXa = 0;
	private int laHuyen = 0;
	private int laTinh = 0;
	
	public String execute() throws Exception {
		memberShip = super.getMemberShip();		
		subAction = super.getSubAction();
		/*if (!memberShip.getRole().equals(Const.ADMIN_PRIVALE)) {
			if (memberShip.getAllXa().intValue() == 1) {
				if (memberShip.getListHuyenQuanLy().size() == 1) {
					//La tai khoan huyen
					laXa = 1;
					laHuyen = 1;
				} else {
					//La tai khoan tinh
					laXa = 1;
					laHuyen = 1;
					laTinh = 1;
				}
			} else {
				//La tai khoan xa
				laXa = 1;
			}
		} else {
			laXa = 1;
			laHuyen = 1;
			laTinh = 1;
		}*/
		return SUCCESS;
	}

	public int getLaXa() {
		return laXa;
	}

	public void setLaXa(int laXa) {
		this.laXa = laXa;
	}

	public int getLaHuyen() {
		return laHuyen;
	}

	public void setLaHuyen(int laHuyen) {
		this.laHuyen = laHuyen;
	}

	public int getLaTinh() {
		return laTinh;
	}

	public void setLaTinh(int laTinh) {
		this.laTinh = laTinh;
	}
	
}

