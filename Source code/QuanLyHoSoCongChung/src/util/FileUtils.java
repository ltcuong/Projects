/**
 * <br>
 * -----------------------------------------------------------------------------
 * <br>
 * Client Name : GDC <br>
 * System Name : Green Email System <br>
 * Project Name : GreenEmail <br>
 * File Name : FileUtils.java <br>
 * Create Date : May 20, 2008 <br>
 * Copyright : GDC 2008 <br>
 * System version : 1.0 <br>
 * -----------------------------------------------------------------------------
 * <br>
 * Change Log <br>
 * -----------------------------------------------------------------------------
 * <br>
 * Date Reason <br>
 * 06/08/2008 Fix bug for method getXXX() <br>
 * -----------------------------------------------------------------------------
 * <br>
 */
package util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * <PRE>
 * Detail description of processing of this class.
 * </PRE>
 * 
 * @version 1.0.0
 */
public final class FileUtils {
	/**
	 * <P>
	 * default contructor.
	 * </P>
	 */
	private FileUtils() {
	}

	/**
	 * <p>
	 * Read content of file to String.
	 * </p>
	 * 
	 * @param pathFile
	 *            String
	 * @return String: content of file
	 * @throws IOException
	 *             e
	 * @author Bac
	 */
	public static String readFile(final String pathFile) throws IOException {
		if ((null == pathFile) || (pathFile.length() == 0)) {
			throw new IllegalArgumentException("Invalid input parameters.");
		}
		final StringBuilder strContent = new StringBuilder();
		FileInputStream fis = null;
		try {
			final int size = 1024;
			// Buffer
			final byte[] buffer = new byte[size];
			// Open stream
			fis = new FileInputStream(pathFile);
			if (fis == null) {
				return strContent.toString();
			}
			// loop until end of file
			int count = 0;
			do {
				count = fis.read(buffer);
				// Append count bytes
				if (count > 0) {
					strContent.append(new String(buffer, 0, count));
				}
			} while (count > 0);
		} finally {
			// Close stream
			if (fis != null) {
				fis.close();
			}
		}
		return strContent.toString();
	}

	/**
	 * write file content to output stream.
	 * 
	 * @param pathFile
	 * @param out
	 * @return
	 * @throws IOException
	 */
	public static long writeFileToOutputStream(final String pathFile,
			final OutputStream out) throws IOException {
		long len = 0;

		// valid the path file.
		if ((null == pathFile) || (pathFile.length() == 0)) {
			throw new IllegalArgumentException("Invalid input parameters.");
		}

		FileInputStream fis = null;
		try {
			// Open stream
			fis = new FileInputStream(pathFile);
			if (fis == null) {
				return 0;
			}

			// Buffer
			final int size = 1024;
			final byte[] buffer = new byte[size];

			// loop until end of file
			int count = 0;
			do {
				count = fis.read(buffer);
				// Write count bytes to output
				if (count > 0) {
					out.write(buffer, 0, count);

					// Increase total bytes
					len += count;
				}
			} while (count > 0);

		} finally {
			// Close stream
			if (fis != null) {
				fis.close();
			}
		}

		return len;
	}

	/**
	 * Write an input stream to output stream.
	 * 
	 * @param input
	 *            InputStream
	 * @param out
	 *            OutputStream - destination
	 * @return number of bytes written
	 * @throws IOException
	 *             io
	 */
	public static long writeToOutputStream(final InputStream input,
			final OutputStream out) throws IOException {
		long len = 0;
		int count = 0;
		final int size = 1024;
		byte[] buffer = new byte[size];
		do {
			count = input.read(buffer);
			// Has bytes to write
			if (count > 0) {
				// Write count bytes to output
				out.write(buffer, 0, count);
				// Increase total bytes
				len += count;
			}
		} while (count > 0);

		return len;
	}

	/**
	 * Write array of bytes to a specific file.
	 * 
	 * @param data
	 *            byte[]
	 * @param fullFileName
	 *            String
	 * @throws IOException
	 *             e
	 */
	public static void writeToFile(final byte[] data, final String fullFileName)
			throws IOException {
		FileOutputStream file = null;
		try {
			if (data == null) {
				throw new IllegalArgumentException("Data is null");
			}
			file = new FileOutputStream(fullFileName);
			if (file == null) {
				throw new IOException(String.format("Cannot create file '%s'",
						fullFileName));
			}
			file.write(data);
		} finally {
			if (file != null) {
				file.close();
			}
		}
	}

	/**
	 * Delete all files (not include sub-folder) in a specific folder.
	 * 
	 * @param folderName
	 *            String
	 * @throws IOException
	 *             e
	 */
	public static void deleteAllFiles(final String folderName)
			throws IOException {
		File folder = new File(folderName);
		if (folder.exists() && folder.isDirectory()) {
			File file = null;
			File[] list = folder.listFiles();
			int len = list.length;
			for (int i = 0; i < len; i++) {
				file = list[i];
				if (file.isFile()) { // Just delete file only
					file.delete();
				}
			}
		}
	}

	/**
	 * Parse file name from String of URL. For example: if
	 * URL=http://.../home.png, the file name is home.png
	 * 
	 * @param strUrl
	 *            String
	 * @return file name or empty
	 */
	public static String pareFileName(final String strUrl) {
		if (strUrl == null || strUrl.length() == 0) {
			return "";
		}
		int index = strUrl.lastIndexOf('/');
		String fileName = "";
		if (index > -1) {
			fileName = strUrl.substring(index + 1);
		}
		return fileName;
	}
}
