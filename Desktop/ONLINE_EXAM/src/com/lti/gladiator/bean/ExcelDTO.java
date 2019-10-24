package com.lti.gladiator.bean;
import org.springframework.web.multipart.MultipartFile;

public class ExcelDTO {
		private String name,level;
		
		private MultipartFile file;

		public ExcelDTO(String name, String level, MultipartFile file) {
			super();
			this.name = name;
			this.level = level;
			this.file = file;
		}

		public ExcelDTO() {
			super();
			// TODO Auto-generated constructor stub
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getLevel() {
			return level;
		}

		public void setLevel(String level) {
			this.level = level;
		}

		public MultipartFile getFile() {
			return file;
		}

		public void setFile(MultipartFile file) {
			this.file = file;
		}


		
	}

