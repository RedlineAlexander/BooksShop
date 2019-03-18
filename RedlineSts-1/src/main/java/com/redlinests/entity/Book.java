package com.redlinests.entity;

import java.util.Date;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;



@Entity(name = "book")
public class Book {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private Integer id;
@Column(name = "bookname")
private String bookName;
private String author;
@Column(name = "purchase_date")
@Temporal(TemporalType.DATE)
private Date purchaseDate;
public Book() {
	
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getBookName() {
	return bookName;
}
public void setBookName(String bookName) {
	this.bookName = bookName;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public Date getPurchaseDate() {
	return purchaseDate;
}
public void setPurchaseDate(Date purchaseDate) {
	this.purchaseDate = purchaseDate;
}


}
