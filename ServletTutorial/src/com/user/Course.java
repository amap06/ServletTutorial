package com.user;

import com.user.WeekDay;

public class Course {

	private String courseName;
	private String professor;
	private String time;
	private String room;
	private String startDate;
	private WeekDay[] occurrences;
	
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getProfessor() {
		return professor;
	}
	public void setProfessor(String professor) {
		this.professor = professor;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public WeekDay[] getOccurrences() {
		return occurrences;
	}
	public void setOccurrences(WeekDay[] occurrences) {
		this.occurrences = occurrences;
	}

	}

