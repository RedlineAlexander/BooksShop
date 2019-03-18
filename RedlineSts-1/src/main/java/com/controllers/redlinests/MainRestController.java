package com.controllers.redlinests;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.redlinests.entity.Book;
import com.redlinests.service.BookService;


@RestController
public class MainRestController {
	@Autowired
	private BookService bookService;
@GetMapping(value = "/hellojsp")
public String hello() {
	return "Hello World";
}
@GetMapping("/findAllBooks")
public Collection<Book> getAllBooks(){
	return bookService.findAllBooks();
}
}
