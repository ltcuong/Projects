package util;

import java.awt.Graphics2D;
import java.awt.GraphicsConfiguration;
import java.awt.GraphicsDevice;
import java.awt.GraphicsEnvironment;
import java.awt.Image;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class ImgUtils {

	public static BufferedImage scale(BufferedImage source, double ratio) {
		int w = (int) (source.getWidth() * ratio);
		int h = (int) (source.getHeight() * ratio);
		BufferedImage bi = getCompatibleImage(w, h);
		Graphics2D g2d = bi.createGraphics();
		double xScale = (double) w / source.getWidth();
		double yScale = (double) h / source.getHeight();
		AffineTransform at = AffineTransform.getScaleInstance(xScale, yScale);
		g2d.drawRenderedImage(source, at);
		g2d.dispose();
		return bi;
	}

	private static BufferedImage getCompatibleImage(int w, int h) {
		GraphicsEnvironment ge = GraphicsEnvironment
				.getLocalGraphicsEnvironment();
		GraphicsDevice gd = ge.getDefaultScreenDevice();
		GraphicsConfiguration gc = gd.getDefaultConfiguration();
		BufferedImage image = gc.createCompatibleImage(w, h);
		return image;
	}

	public static void saveScaledImage(String filePath, String outputFile, int width, int height) {
		try {

			BufferedImage sourceImage = ImageIO.read(new File(filePath));
			BufferedImage img = new BufferedImage(width, height,
					BufferedImage.TYPE_INT_RGB);
			Image scaledImage = sourceImage.getScaledInstance(width, height, Image.SCALE_SMOOTH);
			img.createGraphics().drawImage(scaledImage, 0, 0, null);
			BufferedImage img2 = new BufferedImage(width, height,
					BufferedImage.TYPE_INT_RGB);
			img2 = img.getSubimage(0 , 0, width, height);

			ImageIO.write(img2, "jpg", new File(outputFile));

			/*
			
			int width = sourceImage.getWidth();
			int height = sourceImage.getHeight();

			if (width > height) {
				float extraSize = height - 100;
				float percentHight = (extraSize / height) * 100;
				float percentWidth = width - ((width / 100) * percentHight);
				
				BufferedImage img = new BufferedImage((int) percentWidth, 100,
						BufferedImage.TYPE_INT_RGB);
				Image scaledImage = sourceImage.getScaledInstance(
						(int) percentWidth, 100, Image.SCALE_SMOOTH);
				img.createGraphics().drawImage(scaledImage, 0, 0, null);
				BufferedImage img2 = new BufferedImage(100, 100,
						BufferedImage.TYPE_INT_RGB);
				img2 = img.getSubimage((int) ((percentWidth - 100) / 2), 0,
						100, 100);

				ImageIO.write(img2, "jpg", new File(outputFile));
			} else {
				float extraSize = width - 100;
				float percentWidth = (extraSize / width) * 100;
				float percentHight = height - ((height / 100) * percentWidth);
				BufferedImage img = new BufferedImage(100, (int) percentHight,
						BufferedImage.TYPE_INT_RGB);
				Image scaledImage = sourceImage.getScaledInstance(100,
						(int) percentHight, Image.SCALE_SMOOTH);
				img.createGraphics().drawImage(scaledImage, 0, 0, null);
				BufferedImage img2 = new BufferedImage(100, 100,
						BufferedImage.TYPE_INT_RGB);
				img2 = img.getSubimage(0, (int) ((percentHight - 100) / 2),
						100, 100);

				ImageIO.write(img2, "jpg", new File(outputFile));
			}*/

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
