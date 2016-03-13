package util;

import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.DataFormat;

public class ExcelsGenerator {
	
	private static String pathReport = WebUtil.getPathFolderSaveReport();
	private static CellStyle styleBorder = null;
	private static CellStyle styleCenter = null;
	private static CellStyle styleCenterTitle = null;
	private static CellStyle styleCenterNoneBorder = null;
	private static CellStyle styleCenterBold = null;
	private static CellStyle styleCenterBorderBold = null;
	private static CellStyle styleRight = null;
	private static CellStyle styleNumber = null;
	private static CellStyle styleNumberLocked = null;
	private static CellStyle styleLeft = null;
	private static CellStyle styleLeftColorRed = null;
	private static CellStyle styleLeftNoneBorder = null;
	private static CellStyle styleLeftColorRedNote = null;
	private static CellStyle styleLeftBold =null;
	private static short border = 1;
	
	@SuppressWarnings("deprecation")
	
	private static void createStyleCell(HSSFWorkbook workbook) {
		HSSFFont font = workbook.createFont();
		DataFormat format = workbook.createDataFormat();
		font.setFontName(HSSFFont.FONT_ARIAL);
		font.setFontHeightInPoints((short) 15);
		font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		font.setColor(HSSFFont.COLOR_RED);
		
		HSSFFont fontColorRed = workbook.createFont();
		fontColorRed.setFontName(HSSFFont.FONT_ARIAL);
		fontColorRed.setFontHeightInPoints((short) 10);
		fontColorRed.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		fontColorRed.setColor(HSSFFont.COLOR_RED);
		
		HSSFFont fontColorRedItalic = workbook.createFont();
		fontColorRedItalic.setFontName(HSSFFont.FONT_ARIAL);
		fontColorRedItalic.setFontHeightInPoints((short) 8);
		fontColorRedItalic.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		fontColorRedItalic.setItalic(true);
		fontColorRedItalic.setColor(HSSFFont.COLOR_RED);
		
		HSSFFont font10Bold = workbook.createFont();
		font10Bold.setFontName(HSSFFont.FONT_ARIAL);
		font10Bold.setFontHeightInPoints((short) 10);
		font10Bold.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		
		
		styleBorder = workbook.createCellStyle();
		styleBorder.setBorderBottom(border);
		styleBorder.setBorderTop(border);
		styleBorder.setBorderLeft(border);
		styleBorder.setBorderRight(border);
		styleBorder.setAlignment(CellStyle.ALIGN_LEFT);
		styleBorder.setVerticalAlignment(CellStyle.VERTICAL_CENTER);

		styleCenter = workbook.createCellStyle();
		styleCenter.setWrapText(true);
		styleCenter.setAlignment(CellStyle.ALIGN_CENTER);
		styleCenter.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
		styleCenter.setBorderBottom(border);
		styleCenter.setBorderTop(border);
		styleCenter.setBorderLeft(border);
		styleCenter.setBorderRight(border);


		styleCenterTitle = workbook.createCellStyle();
		styleCenterTitle.setWrapText(true);
		styleCenterTitle.setAlignment(CellStyle.ALIGN_CENTER);
		styleCenterTitle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
		styleCenterTitle.setFont(font);

		styleCenterNoneBorder = workbook.createCellStyle();
		styleCenterNoneBorder.setWrapText(true);
		styleCenterNoneBorder.setAlignment(CellStyle.ALIGN_CENTER);
		styleCenterNoneBorder
				.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
		
		styleCenterBold = workbook.createCellStyle();
		styleCenterBold.setWrapText(true);
		styleCenterBold.setAlignment(CellStyle.ALIGN_CENTER);
		styleCenterBold.setVerticalAlignment(CellStyle.VERTICAL_CENTER);			
		styleCenterBold.setFont(font10Bold);
		
		styleCenterBorderBold = workbook.createCellStyle();
		styleCenterBorderBold.setWrapText(true);
		styleCenterBorderBold.setAlignment(CellStyle.ALIGN_CENTER);
		styleCenterBorderBold.setVerticalAlignment(CellStyle.VERTICAL_CENTER);			
		styleCenterBorderBold.setFont(font10Bold);
		styleCenterBorderBold.setBorderBottom(border);
		styleCenterBorderBold.setBorderTop(border);
		styleCenterBorderBold.setBorderLeft(border);
		styleCenterBorderBold.setBorderRight(border);
		
		
		styleRight = workbook.createCellStyle();
		styleRight.setAlignment(CellStyle.ALIGN_RIGHT);
		styleRight.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
		styleRight.setBorderBottom(border);
		styleRight.setBorderTop(border);
		styleRight.setBorderLeft(border);
		styleRight.setBorderRight(border);
		
		styleNumber = workbook.createCellStyle();
		styleNumber.setAlignment(CellStyle.ALIGN_RIGHT);
		styleNumber.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
		styleNumber.setBorderBottom(border);
		styleNumber.setBorderTop(border);
		styleNumber.setBorderLeft(border);
		styleNumber.setBorderRight(border);
		styleNumber.setDataFormat(format.getFormat("#,##0.00"));
		styleNumber.setLocked(false);
		
		styleNumberLocked = workbook.createCellStyle();
		styleNumberLocked.setAlignment(CellStyle.ALIGN_RIGHT);
		styleNumberLocked.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
		styleNumberLocked.setBorderBottom(border);
		styleNumberLocked.setBorderTop(border);
		styleNumberLocked.setBorderLeft(border);
		styleNumberLocked.setBorderRight(border);
		styleNumberLocked.setDataFormat(format.getFormat("#,##0.00"));
		styleNumberLocked.setLocked(true);
		
		styleLeft = workbook.createCellStyle();
		styleLeft.setAlignment(CellStyle.ALIGN_LEFT);
		styleLeft.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
		styleLeft.setBorderBottom(border);
		styleLeft.setBorderTop(border);
		styleLeft.setBorderLeft(border);
		styleLeft.setBorderRight(border);
		
		styleLeftColorRed = workbook.createCellStyle();
		styleLeftColorRed.setAlignment(CellStyle.ALIGN_LEFT);
		styleLeftColorRed.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
		styleLeftColorRed.setBorderBottom(border);
		styleLeftColorRed.setBorderTop(border);
		styleLeftColorRed.setBorderLeft(border);
		styleLeftColorRed.setBorderRight(border);
		styleLeftColorRed.setFont(fontColorRed);
		
		styleLeftColorRedNote = workbook.createCellStyle();
		styleLeftColorRedNote.setAlignment(CellStyle.ALIGN_LEFT);
		styleLeftColorRedNote.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
		styleLeftColorRedNote.setFont(fontColorRedItalic);
		
		styleLeftNoneBorder = workbook.createCellStyle();
		styleLeftNoneBorder.setAlignment(CellStyle.ALIGN_LEFT);
		styleLeftNoneBorder.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
		
		styleLeftBold = workbook.createCellStyle();
		styleLeftBold.setWrapText(true);
		styleLeftBold.setAlignment(CellStyle.ALIGN_LEFT);
		styleLeftBold.setVerticalAlignment(CellStyle.VERTICAL_CENTER);			
		styleLeftBold.setFont(font10Bold);
		styleLeftBold.setBorderBottom(border);
		styleLeftBold.setBorderTop(border);
		styleLeftBold.setBorderLeft(border);
		styleLeftBold.setBorderRight(border);
	}
}
	