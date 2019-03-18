package com.redlinests.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.redlinests.entity.*;
import com.redlinests.repository.BookRepository;

@Service
public class BookService {
@Autowired
private BookRepository bookRepository;



public BookService(BookRepository bookRepository) {
	super();
	this.bookRepository = bookRepository;
}



public Collection<Book> findAllBooks(){
List<Book>books = new ArrayList<Book>();
for(Book book:bookRepository.findAll()) {
	books.add(book);
}
return books;
}

public Book findOne(Integer id) {
	return bookRepository.findById(id).orElse(null);
	
}
public void save(Book book) {	
	bookRepository.save(book);
}
public void delete(Integer id) {
	bookRepository.deleteById(id);
}


}

