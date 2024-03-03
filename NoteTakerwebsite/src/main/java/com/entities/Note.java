package com.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Columns;

@Entity
@Table(name="notes")
public class Note {
	    @Id
	    @GeneratedValue(strategy=GenerationType.AUTO)
		private int id;
		private String title;
		@Column(length=15000)
		private String content;
		private Date addedDate;
		
		public Note() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Note(int id, String title, String content, Date addedDate) {
			super();
			this.id = id;
			this.title = title;
			this.content = content;
			this.addedDate = addedDate;
		}

		public Note(String title, String content, Date addedDate) {
			super();
			this.title = title;
			this.content = content;
			this.addedDate = addedDate;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

		public Date getAddedDate() {
			return addedDate;
		}

		public void setAddedDate(Date addedDate) {
			this.addedDate = addedDate;
		}
		
		
		
		
		

}
