package fileupload;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;

import util.WebUtil;
import controller.BaseAction;

public class UploadFile extends BaseAction {
	private static final long serialVersionUID = 1L;

	private List<File> uploads = new ArrayList<File>();
	private List<String> uploadFileNames = new ArrayList<String>();
	private List<String> uploadContentTypes = new ArrayList<String>();
	
	private String folderUpload;
	
	public String execute() {
		String desPath = "";
		if (uploads != null && uploads.size() != 0) {
			desPath = WebUtil.getPathFolderSaveImages() + "/" + folderUpload;
			for (int i = 0; i < uploads.size(); i++) {
				File fullPath = new File(desPath);
				if (!fullPath.exists()) {
					fullPath.mkdirs();
				}
				fullPath = new File(fullPath.getPath(), uploadFileNames.get(i));
				// Upload image

				try {
					FileUtils.copyFile(uploads.get(i), fullPath);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return SUCCESS;
	}

	
	public String getFolderUpload() {
		return folderUpload;
	}


	public void setFolderUpload(String folderUpload) {
		this.folderUpload = folderUpload;
	}


	public List<File> getUpload() {
		return this.uploads;
	}

	public void setUpload(List<File> uploads) {
		this.uploads = uploads;
	}

	public List<String> getUploadFileName() {
		return this.uploadFileNames;
	}

	public void setUploadFileName(List<String> uploadFileNames) {
		this.uploadFileNames = uploadFileNames;
	}

	public List<String> getUploadContentType() {
		return this.uploadContentTypes;
	}

	public void setUploadContentType(List<String> contentTypes) {
		this.uploadContentTypes = contentTypes;
	}
}