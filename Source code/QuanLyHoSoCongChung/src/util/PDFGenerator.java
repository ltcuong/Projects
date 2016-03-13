package util;

import java.io.File;
import java.io.IOException;

import net.lingala.zip4j.core.ZipFile;
import net.lingala.zip4j.model.ZipParameters;
import net.lingala.zip4j.util.Zip4jConstants;

import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.pdf.BaseFont;

public class PDFGenerator {
	private static String pathReport = WebUtil.getPathFolderSaveReport();
	public static File fontFile = new File(pathReport
			+ "fonts/times.ttf");
	private static Font catFont = null;
	private static Font midFont = null;
	private static Font subFontBold = null;
	private static Font midFontItalic = null;
	private static Font subFont = null;
	

	private static void setFontReport() {
		try {
			catFont = new Font(BaseFont.createFont(pathReport
					+ "fonts/times.ttf", BaseFont.IDENTITY_H, true), 15, Font.BOLD);
			midFont = new Font(BaseFont.createFont(pathReport
					+ "fonts/times.ttf", BaseFont.IDENTITY_H, true), 12);
			midFontItalic = new Font(BaseFont.createFont(pathReport
					+ "fonts/times.ttf", BaseFont.IDENTITY_H, true), 11, Font.ITALIC);
			
			subFontBold = new Font(BaseFont.createFont(pathReport
					+ "fonts/times.ttf", BaseFont.IDENTITY_H, true), 12, Font.BOLD);
			
			subFont = new Font(BaseFont.createFont(pathReport
					+ "fonts/times.ttf", BaseFont.IDENTITY_H, true), 12);			
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * Zip report
	 * 
	 * @param memberShip
	 * @param fileSource
	 * @param fileDeription
	 */
	public static void ZippingReport(String fileSource, String fileDeription) {
		try {
			File f = new File(fileDeription);
			if (f.exists()) {
				f.delete();
			}
			ZipFile zip = new ZipFile(fileDeription);
			ZipParameters p = new ZipParameters();
			p.setCompressionMethod(Zip4jConstants.COMP_DEFLATE);
			p.setCompressionLevel(Zip4jConstants.DEFLATE_LEVEL_NORMAL);
			p.setEncryptFiles(true);
			p.setEncryptionMethod(Zip4jConstants.ENC_METHOD_STANDARD);
			p.setPassword(Const.PASSWORD_ZIP_REPORT);
			File fsource = new File(fileSource);
			zip.createZipFile(fsource, p);
			File fdelete = new File(fileSource);
			fdelete.delete();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
}
