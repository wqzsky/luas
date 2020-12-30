package cn.itlaobing.models;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

public class ScoreModel {
	private int id;
	@NotNull(message="�û���������Ϊ��")
	@Length(max=4,min=2,message="����д��ȷ������")
	private String stuName;
	
	private String gender;
	private String courseName;
	
	@Max(value=100,message="�ɼ���������100")
	@Min(value=0,message="�ɼ�������С��0")
	private int courseScore;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public int getCourseScore() {
		return courseScore;
	}
	public void setCourseScore(int courseScore) {
		this.courseScore = courseScore;
	}
	
	
	
}
